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
