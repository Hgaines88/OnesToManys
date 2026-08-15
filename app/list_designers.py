from app.database import connect


connection = connect()

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
