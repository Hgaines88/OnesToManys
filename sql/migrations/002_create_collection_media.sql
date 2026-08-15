CREATE TABLE IF NOT EXISTS collection_media (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collection_id INTEGER NOT NULL,
    media_type TEXT NOT NULL
        CHECK (media_type IN ('source', 'youtube')),
    media_value TEXT NOT NULL
        CHECK (length(trim(media_value)) > 0),

    FOREIGN KEY (collection_id)
        REFERENCES collections(id)
        ON DELETE CASCADE,

    UNIQUE (collection_id, media_type)
);

CREATE INDEX IF NOT EXISTS idx_collection_media_collection_id
    ON collection_media(collection_id);
