import sqlite3
from pathlib import Path

from scripts.archive_data import DEFAULT_ARCHIVE, import_archive


PROJECT_ROOT = Path(__file__).resolve().parent.parent
DATABASE_PATH = PROJECT_ROOT / "data" / "archive.db"


def initialize_database() -> bool:
    """Create and seed the archive database only when it does not exist."""
    DATABASE_PATH.parent.mkdir(parents=True, exist_ok=True)

    if DATABASE_PATH.exists():
        return False

    import_archive(DATABASE_PATH, DEFAULT_ARCHIVE, replace=True)

    # A canonical restore is already at the latest content baseline. Recording
    # existing migrations prevents legacy data migrations from replaying over it
    # when FastAPI starts for the first time.
    connection = sqlite3.connect(DATABASE_PATH)
    try:
        connection.execute(
            """
            CREATE TABLE IF NOT EXISTS schema_migrations (
                filename TEXT PRIMARY KEY,
                applied_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
            )
            """
        )
        migration_names = [
            path.name
            for path in sorted(
                (PROJECT_ROOT / "sql" / "migrations").glob("*.sql")
            )
        ]
        connection.executemany(
            "INSERT OR IGNORE INTO schema_migrations (filename) VALUES (?)",
            [(name,) for name in migration_names],
        )
        connection.commit()
    finally:
        connection.close()

    return True


if __name__ == "__main__":
    created = initialize_database()

    if created:
        print(f"Database initialized from {DEFAULT_ARCHIVE} at {DATABASE_PATH}")
    else:
        print(f"Database already exists; left unchanged at {DATABASE_PATH}")
