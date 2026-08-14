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

    assert len(designers) == 11
    designer_names = {
        designer["full_name"]
        for designer in designers
    }
    assert designer_names == {
        "Demna",
        "Grace Wales Bonner",
        "Junya Watanabe",
        "Jonathan Anderson",
        "Lee Alexander McQueen",
        "Miuccia Prada",
        "Rei Kawakubo",
        "Sarah Burton",
        "Shayne Oliver",
        "Telfar Clemens",
        "Virgil Abloh",
    }

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

    assert len(collections) == 2
    assert all(
        collection["designer_id"] == 1
        for collection in collections
    )
    assert {
        collection["label"]
        for collection in collections
    } == {"Alexander McQueen", "Givenchy"}


def test_every_seeded_designer_has_a_collection(client):
    designers_response = client.get("/designers")
    collections_response = client.get("/collections")

    assert designers_response.status_code == 200
    assert collections_response.status_code == 200

    designer_ids = {
        designer["id"]
        for designer in designers_response.json()
    }
    credited_designer_ids = {
        collection["designer_id"]
        for collection in collections_response.json()
    }

    assert designer_ids <= credited_designer_ids

def test_deleting_designer_cascades_to_collections(client):
    designer_response = client.post(
        "/designers",
        json={
            "full_name": "Temporary Cascade Designer",
            "nationality": None,
            "birth_year": None,
            "website": None,
            "biography": None,
        },
    )

    assert designer_response.status_code == 201
    designer_id = designer_response.json()["id"]

    collection_response = client.post(
        "/collections",
        json={
            "designer_id": designer_id,
            "label": "Temporary Label",
            "name": None,
            "season": "Resort",
            "release_year": 2026,
            "status": "concept",
            "piece_count": None,
            "description": "Temporary cascade test.",
        },
    )

    assert collection_response.status_code == 201
    collection_id = collection_response.json()["id"]

    delete_response = client.delete(
        f"/designers/{designer_id}"
    )

    assert delete_response.status_code == 204

    missing_collection_response = client.get(
        f"/collections/{collection_id}"
    )

    assert missing_collection_response.status_code == 404
