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

@app.get("/designers/{designer_id}/collections")
def list_designer_collections(designer_id: int):
    connection = connect()

    try:
        designer = connection.execute(
            """
            SELECT id
            FROM designers
            WHERE id = ?
            """,
            (designer_id,),
        ).fetchone()

        if designer is None:
            raise HTTPException(
                status_code=404,
                detail="Designer not found",
            )

        rows = connection.execute(
            """
            SELECT
                id,
                designer_id,
                label,
                name,
                season,
                release_year,
                status,
                piece_count,
                description
            FROM collections
            WHERE designer_id = ?
            ORDER BY release_year DESC, season
            """,
            (designer_id,),
        ).fetchall()

        return [dict(row) for row in rows]
    finally:
        connection.close()
