INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES (
    'Haider Ackermann',
    'French-Colombian',
    1971,
    NULL,
    'Colombian-born, Antwerp-trained designer Haider Ackermann launched his namesake label in 2001 and developed a distinctive language of fluid tailoring, rich color, layered draping, and sensual restraint. His career includes creative leadership at Berluti and Tom Ford, as well as a celebrated one-season haute couture collaboration with Jean Paul Gaultier.'
)
ON CONFLICT(full_name) DO UPDATE SET
    nationality = excluded.nationality,
    birth_year = excluded.birth_year,
    website = excluded.website,
    biography = excluded.biography;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES
    ((SELECT id FROM designers WHERE full_name = 'Haider Ackermann'), 'Haider Ackermann', NULL, 'Spring/Summer', 2011, 'archived', 34, 'Languid silk pajamas, saturated gowns, plunging tuxedo shapes, and cropped leather jackets crystallized Ackermann''s sensual, precisely disheveled early vocabulary.'),
    ((SELECT id FROM designers WHERE full_name = 'Haider Ackermann'), 'Haider Ackermann', NULL, 'Fall/Winter', 2011, 'archived', 55, 'Jewel-toned silks, leather, and suede were wrapped into long, lean silhouettes, balancing romantic drape with a newly masculine restraint.'),
    ((SELECT id FROM designers WHERE full_name = 'Haider Ackermann'), 'Berluti', NULL, 'Fall/Winter 2017 Menswear', 2017, 'archived', NULL, 'Ackermann''s Berluti debut brought his languid tailoring and saturated color to the house''s leather craft and luxury menswear vocabulary.'),
    ((SELECT id FROM designers WHERE full_name = 'Haider Ackermann'), 'Jean Paul Gaultier', NULL, 'Spring 2023 Couture', 2023, 'archived', 36, 'A one-season guest couture collection joined body-sharp tailoring and precise drape with Ackermann''s restrained drama and command of color.'),
    ((SELECT id FROM designers WHERE full_name = 'Haider Ackermann'), 'Tom Ford', NULL, 'Fall/Winter', 2025, 'released', 57, 'Ackermann''s Tom Ford debut recast the house''s sensuality through sharp leather daywear, disciplined tailoring, and vivid evening color.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name = excluded.name,
    status = excluded.status,
    piece_count = excluded.piece_count,
    description = excluded.description;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES
    ((SELECT c.id FROM collections c JOIN designers d ON d.id = c.designer_id WHERE d.full_name = 'Haider Ackermann' AND c.label = 'Haider Ackermann' AND c.season = 'Spring/Summer' AND c.release_year = 2011), 'source', 'https://www.vogue.com/fashion-shows/spring-2011-ready-to-wear/haider-ackermann'),
    ((SELECT c.id FROM collections c JOIN designers d ON d.id = c.designer_id WHERE d.full_name = 'Haider Ackermann' AND c.label = 'Haider Ackermann' AND c.season = 'Fall/Winter' AND c.release_year = 2011), 'source', 'https://www.vogue.com/fashion-shows/fall-2011-ready-to-wear/haider-ackermann'),
    ((SELECT c.id FROM collections c JOIN designers d ON d.id = c.designer_id WHERE d.full_name = 'Haider Ackermann' AND c.label = 'Berluti' AND c.season = 'Fall/Winter 2017 Menswear' AND c.release_year = 2017), 'source', 'https://www.vogue.com/fashion-shows/fall-2017-menswear/berluti'),
    ((SELECT c.id FROM collections c JOIN designers d ON d.id = c.designer_id WHERE d.full_name = 'Haider Ackermann' AND c.label = 'Jean Paul Gaultier' AND c.season = 'Spring 2023 Couture' AND c.release_year = 2023), 'source', 'https://www.vogue.com/fashion-shows/spring-2023-couture/jean-paul-gaultier'),
    ((SELECT c.id FROM collections c JOIN designers d ON d.id = c.designer_id WHERE d.full_name = 'Haider Ackermann' AND c.label = 'Tom Ford' AND c.season = 'Fall/Winter' AND c.release_year = 2025), 'source', 'https://www.vogue.com/fashion-shows/fall-2025-ready-to-wear/tom-ford')
ON CONFLICT(collection_id, media_type) DO UPDATE SET
    media_value = excluded.media_value;
