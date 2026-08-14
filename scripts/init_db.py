import sqlite3
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parent.parent
DATABASE_PATH = PROJECT_ROOT / "data" / "archive.db"
SCHEMA_PATH = PROJECT_ROOT / "sql" / "schema.sql"
SEED_PATH = PROJECT_ROOT / "sql" / "seed.sql"


def initialize_database() -> bool:
    """Create and seed the archive database only when it does not exist."""
    DATABASE_PATH.parent.mkdir(parents=True, exist_ok=True)

    if DATABASE_PATH.exists():
        return False

    connection = sqlite3.connect(DATABASE_PATH)

    try:
        connection.execute("PRAGMA foreign_keys = ON")
        connection.executescript(SCHEMA_PATH.read_text())
        connection.executescript(SEED_PATH.read_text())
    finally:
        connection.close()

    return True


if __name__ == "__main__":
    created = initialize_database()

    if created:
        print(f"Database initialized at {DATABASE_PATH}")
    else:
        print(f"Database already exists; left unchanged at {DATABASE_PATH}")
