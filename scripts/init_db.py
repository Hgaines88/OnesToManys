import sqlite3
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parent.parent
DATABASE_PATH = PROJECT_ROOT / "data" / "archive.db"
SCHEMA_PATH = PROJECT_ROOT / "sql" / "schema.sql"
SEED_PATH = PROJECT_ROOT / "sql" / "seed.sql"


DATABASE_PATH.parent.mkdir(parents=True, exist_ok=True)

if DATABASE_PATH.exists():
    DATABASE_PATH.unlink()

connection = sqlite3.connect(DATABASE_PATH)
connection.execute("PRAGMA foreign_keys = ON")

schema_sql = SCHEMA_PATH.read_text()
connection.executescript(schema_sql)

seed_sql = SEED_PATH.read_text()
connection.executescript(seed_sql)

connection.close()

print(f"Database initialized at {DATABASE_PATH}")
