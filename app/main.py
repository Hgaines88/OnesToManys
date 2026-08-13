from fastapi import FastAPI


app = FastAPI(title="Collection Archive")


@app.get("/health")
def health():
    return {"status": "ok"}
