from pathlib import Path

import pytest
from fastapi.testclient import TestClient

from app import database
from app.main import app


PROJECT_ROOT = Path(__file__).resolve().parent.parent


@pytest.fixture
def client(tmp_path, monkeypatch):
    test_database_path = tmp_path / "test.db"

    monkeypatch.setattr(
        database,
        "DATABASE_PATH",
        test_database_path,
    )

    connection = database.connect()

    try:
        schema_sql = (
            PROJECT_ROOT / "sql" / "schema.sql"
        ).read_text()

        seed_sql = (
            PROJECT_ROOT / "sql" / "seed.sql"
        ).read_text()

        connection.executescript(schema_sql)
        connection.executescript(seed_sql)
    finally:
        connection.close()

    with TestClient(app) as test_client:
        yield test_client


def test_list_designers(client):
    response = client.get("/designers")

    assert response.status_code == 200

    designers = response.json()

    assert len(designers) == 2
    assert designers[0]["full_name"] == "Sarah Burton"
    assert designers[1]["full_name"] == "Shayne Oliver"

def test_get_designer(client):
    response = client.get("/designers/1")

    assert response.status_code == 200
    assert response.json()["full_name"] == "Sarah Burton"


def test_missing_designer_returns_404(client):
    response = client.get("/designers/999")

    assert response.status_code == 404
    assert response.json() == {
        "detail": "Designer not found"
    }


def test_list_collections_for_designer(client):
    response = client.get("/designers/1/collections")

    assert response.status_code == 200

    collections = response.json()

    assert len(collections) == 1
    assert collections[0]["label"] == "Givenchy"
    assert collections[0]["designer_id"] == 1
