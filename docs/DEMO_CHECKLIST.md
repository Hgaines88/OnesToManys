# Demonstration checklist

This folder is the destination for the final screenshots and screen recording.
The live database remains local; `data/archive.json` is the portable, reviewed
record of the archive.

## Start the application

From the project root, start FastAPI:

```bash
source .venv/bin/activate
uvicorn app.main:app --reload
```

In a second terminal, start React:

```bash
cd react-ui
npm run dev
```

Open the React client at <http://localhost:5173> and the Vanilla client at
<http://localhost:8000/>. API documentation is available at
<http://localhost:8000/docs>.

## Postman validation

1. Import `postman/Collection-Archive.postman_collection.json` into Postman.
2. Confirm the `baseUrl` collection variable is `http://localhost:8000`.
3. Run the whole collection with the Collection Runner, in its saved order.
4. Confirm every test passes. The run creates temporary parent and child
   records, verifies their relationship, then deletes them and verifies the
   database cascade.
5. Save a screenshot as `docs/postman-validation.png`.

Completed: the collection passed 9 requests and 10 assertions with zero
failures. The reusable collection and validation screenshot are stored here.

## Short walkthrough recording

Keep the recording to roughly two or three minutes:

1. React: show the designer index, open a profile with several labels, and play
   or point out an attached runway video.
2. React: briefly show the create/edit interface.
3. Vanilla: show the same archive data and open a collection detail page.
4. Postman: show the successful Collection Runner summary.
5. Briefly show `data/archive.json` and explain that the content is portable,
   reviewable, and independent of SQLite's generated numeric IDs.

Save the recording as `docs/archive-walkthrough.webm` and representative client
screenshots as `docs/react-ui.png` and `docs/vanilla-ui.png`.

Completed: a browser-only walkthrough and all three screenshots are stored in
this directory. The recording contains no desktop, microphone, or private tabs.

Do not include authentication tokens, terminal history, or unrelated browser
tabs in any screenshot or recording.
