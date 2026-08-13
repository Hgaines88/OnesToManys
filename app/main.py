from fastapi import FastAPI, HTTPException
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

@app.get("/designers/{designer_id}")
def get_designer(designer_id: int):
    connection = connect()

    try:
        row = connection.execute(
            """
            SELECT
                id,
                full_name,
                nationality,
                birth_year,
                website,
                biography
            FROM designers
            WHERE id = ?
            """,
            (designer_id,),
        ).fetchone()

        if row is None:
            raise HTTPException(
                status_code=404,
                detail="Designer not found",
            )

        return dict(row)
    finally:
        connection.close()
