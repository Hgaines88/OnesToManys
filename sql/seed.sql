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
    ),
    (
        3,
        'Grace Wales Bonner',
        'British-Jamaican',
        NULL,
        'https://walesbonner.com',
        'Founder of Wales Bonner, a label exploring European heritage and Afro-Atlantic cultural traditions.'
    ),
    (
        4,
        'Lee Alexander McQueen',
        'British',
        NULL,
        'https://www.alexandermcqueen.com',
        'Founder of the McQueen house, known for innovative tailoring and theatrical presentations.'
    ),
    (
        5,
        'Jonathan Anderson',
        'Northern Irish',
        NULL,
        'https://jwanderson.com',
        'Founder of JW Anderson whose career includes creative leadership at Loewe and Dior.'
    ),
    (
        6,
        'Demna',
        'Georgian',
        NULL,
        NULL,
        'Designer and co-founder of Vetements whose career includes creative leadership at Balenciaga and Gucci.'
    ),
    (
        7,
        'Virgil Abloh',
        'American',
        NULL,
        NULL,
        'Designer and founder of Off-White whose career includes creative leadership at Louis Vuitton.'
    ),
    (
        8,
        'Junya Watanabe',
        'Japanese',
        1961,
        NULL,
        'Designer who began his career at Comme des Garçons and launched his namesake line within the house.'
    ),
    (
        9,
        'Miuccia Prada',
        'Italian',
        NULL,
        NULL,
        'Designer and creative director of Prada and Miu Miu.'
    ),
    (
        10,
        'Rei Kawakubo',
        'Japanese',
        NULL,
        NULL,
        'Designer and founder of Comme des Garçons.'
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
        ),
        (
            2,
            1,
            'Alexander McQueen',
            NULL,
            'Spring/Summer',
            2024,
            'archived',
            NULL,
            'Sarah Burton''s final collection as creative director of Alexander McQueen.'
        ),
        (
            3,
            2,
            'Hood By Air',
            'Pilgrimage',
            'Fall/Winter',
            2016,
            'archived',
            NULL,
            'A collection exploring transience, migration, and the body as cargo.'
        ),
        (
            4,
            3,
            'Wales Bonner',
            NULL,
            'Spring/Summer',
            2024,
            'released',
            45,
            'The collection celebrated Afro-Atlantic cultural traditions through contemporary fashion.'
        ),
        (
            5,
            4,
            'Alexander McQueen',
            'No. 13',
            'Spring/Summer',
            1999,
            'archived',
            NULL,
            'A landmark Lee Alexander McQueen collection known for its theatrical runway presentation.'
        ),
        (
            6,
            5,
            'JW Anderson',
            NULL,
            'Spring/Summer',
            2024,
            'released',
            55,
            'The collection explored gender fluidity and contemporary design.'
        ),
        (
            7,
            2,
            'Hood By Air',
            'Wench',
            'Spring/Summer',
            2017,
            'archived',
            NULL,
            'A Hood By Air collection presented during New York Fashion Week.'
        ),
        (
            8,
            2,
            'Helmut Lang',
            'Seen by Shayne Oliver',
            'Spring/Summer',
            2018,
            'archived',
            NULL,
            'Created during Shayne Oliver''s residency at Helmut Lang.'
        ),
        (
            9,
            2,
            'Diesel',
            'Red Tag Project',
            'Fall/Winter',
            2018,
            'archived',
            NULL,
            'A denim-focused capsule created for the Diesel Red Tag Project.'
        );
