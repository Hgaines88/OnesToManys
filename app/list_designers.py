import sqlite3
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parent.parent
DATABASE_PATH = PROJECT_ROOT / "data" / "archive.db"

connection = sqlite3.connect(DATABASE_PATH)
connection.row_factory = sqlite3.Row
connection.execute("PRAGMA foreign_keys = ON")

rows = connection.execute(
    """
    SELECT
        id,
        full_name,
        nationality,
        birth_year
    FROM designers
    ORDER BY full_name
    """
).fetchall()

for row in rows:
    designer = dict(row)
    print(f"{designer['full_name']} — {designer['nationality']}")

connection.close()
