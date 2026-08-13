from fastapi import FastAPI
from app.database import connect


app = FastAPI(title="Collection Archive")


@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/designers")
def list_designers():
    connection = connect()

    try:
        rows = connection.execute(
            """
            SELECT
                id,
                full_name,
                nationality,
                birth_year,
                website,
                biography
            FROM designers
            ORDER BY full_name
            """
        ).fetchall()

        return [dict(row) for row in rows]
    finally:
        connection.close()

    return designers
