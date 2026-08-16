import json
import sqlite3
from pathlib import Path

from scripts.archive_data import export_archive, import_archive


PROJECT_ROOT = Path(__file__).resolve().parent.parent
ARCHIVE = PROJECT_ROOT / "data" / "archive.json"


def archive_counts(database_path):
    connection = sqlite3.connect(database_path)
    try:
        return tuple(
            connection.execute(f"SELECT COUNT(*) FROM {table}").fetchone()[0]
            for table in ("designers", "collections", "collection_media")
        )
    finally:
        connection.close()


def test_export_import_round_trip_preserves_content(tmp_path):
    source = tmp_path / "source.db"
    restored = tmp_path / "restored.db"
    first_json = tmp_path / "first.json"
    second_json = tmp_path / "second.json"

    import_archive(source, ARCHIVE, replace=True)
    export_archive(source, first_json)
    import_archive(restored, first_json, replace=True)
    export_archive(restored, second_json)

    assert json.loads(first_json.read_text()) == json.loads(second_json.read_text())
    assert archive_counts(source) == archive_counts(restored)


def test_merge_import_is_idempotent(tmp_path):
    database = tmp_path / "archive.db"
    archive = ARCHIVE

    import_archive(database, archive)
    initial_counts = archive_counts(database)
    import_archive(database, archive)

    assert archive_counts(database) == initial_counts
