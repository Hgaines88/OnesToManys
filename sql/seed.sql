PRAGMA foreign_keys = ON;

INSERT INTO designers (
    id,
    full_name,
    nationality,
    birth_year,
    website,
    biography
)
VALUES
    (
        1,
        'Sarah Burton',
        'British',
        NULL,
        NULL,
        'Fashion designer whose career includes work for Alexander McQueen and Givenchy.'
    ),
    (
        2,
        'Shayne Oliver',
        'American',
        NULL,
        NULL,
        'Fashion designer associated with multiple labels and creative projects.'
    );


INSERT INTO collections (
    id,
    designer_id,
    label,
    name,
    season,
    release_year,
    status,
    piece_count,
    description
)
VALUES (
    1,
    1,
    'Givenchy',
    NULL,
    'Fall/Winter',
    2025,
    'released',
    52,
    'The collection focused on cut, proportion, and tailoring.'
);
