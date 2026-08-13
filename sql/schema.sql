
PRAGMA foreign_keys = ON;

CREATE TABLE designers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL UNIQUE
        CHECK (length(trim(full_name)) > 0),
    nationality TEXT,
    birth_year INTEGER
        CHECK (birth_year BETWEEN 1800 AND 2100),
    website TEXT,
    biography TEXT
);


CREATE TABLE collections (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    designer_id INTEGER NOT NULL,

    label TEXT NOT NULL
        CHECK (length(trim(label)) > 0),

    name TEXT
        CHECK (name IS NULL OR length(trim(name)) > 0),

    season TEXT NOT NULL
        CHECK (length(trim(season)) > 0),

    release_year INTEGER NOT NULL
        CHECK (release_year BETWEEN 1900 AND 2100),

    status TEXT NOT NULL
        CHECK (
            status IN (
                'concept',
                'in-production',
                'released',
                'archived'
            )
        ),

    piece_count INTEGER
        CHECK (piece_count IS NULL OR piece_count >= 0),

    description TEXT,

    FOREIGN KEY (designer_id)
        REFERENCES designers(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    UNIQUE (
        designer_id,
        label,
        season,
        release_year
    )
);

CREATE INDEX idx_collections_designer_id
    ON collections(designer_id);