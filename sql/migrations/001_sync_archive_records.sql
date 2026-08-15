-- Correct the designer replacement made after the original database was built.
UPDATE designers
SET
    full_name = 'Junya Watanabe',
    nationality = 'Japanese',
    birth_year = 1961,
    website = NULL,
    biography = 'Designer who began his career at Comme des Garçons and launched his namesake line within the house.'
WHERE full_name = 'Hussein Chalayan'
  AND NOT EXISTS (
      SELECT 1 FROM designers WHERE full_name = 'Junya Watanabe'
  );

INSERT OR IGNORE INTO designers (
    full_name, nationality, birth_year, website, biography
)
VALUES
    (
        'Telfar Clemens',
        'Liberian-American',
        1985,
        'https://telfar.net',
        'Founder of Telfar, a New York label known for accessible, unisex fashion and its community-focused approach.'
    ),
    (
        'Rick Owens',
        'American',
        1962,
        'https://www.rickowens.eu',
        'California-born designer who founded his independent namesake label in 1994 and later established it in Paris.'
    );

-- Apply factual corrections to older records without replacing the records.
UPDATE collections
SET
    piece_count = 34,
    description = 'The Spring/Summer 2024 menswear collection was titled Marathon.'
WHERE designer_id = (
        SELECT id FROM designers WHERE full_name = 'Grace Wales Bonner'
    )
  AND label = 'Wales Bonner'
  AND season = 'Spring/Summer'
  AND release_year = 2024;

UPDATE collections
SET
    piece_count = NULL,
    description = 'The collection reworked familiar wardrobe pieces with exaggerated proportions and unexpected materials.'
WHERE designer_id = (
        SELECT id FROM designers WHERE full_name = 'Jonathan Anderson'
    )
  AND label = 'JW Anderson'
  AND season = 'Spring/Summer'
  AND release_year = 2024;

UPDATE collections
SET description = 'A Hood By Air collection developed with Wench, Shayne Oliver and Arca''s musical project.'
WHERE designer_id = (
        SELECT id FROM designers WHERE full_name = 'Shayne Oliver'
    )
  AND label = 'Hood By Air'
  AND season = 'Spring/Summer'
  AND release_year = 2017;

-- Add missing collections by looking up designers by their stable unique names.
INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Balenciaga', NULL, 'Spring/Summer', 2023,
       'archived', NULL,
       'A Demna collection presented on a mud-covered runway in Paris.'
FROM designers WHERE full_name = 'Demna';

INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Louis Vuitton', NULL, 'Spring/Summer', 2019,
       'archived', NULL,
       'Virgil Abloh''s debut menswear collection for Louis Vuitton.'
FROM designers WHERE full_name = 'Virgil Abloh';

INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Junya Watanabe MAN', NULL, 'Spring/Summer', 2025,
       'archived', NULL,
       'A menswear collection combining formalwear with a punk sensibility.'
FROM designers WHERE full_name = 'Junya Watanabe';

INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Prada', NULL, 'Spring/Summer', 2012,
       'archived', NULL,
       'A Miuccia Prada collection drawing on 1950s automobile imagery.'
FROM designers WHERE full_name = 'Miuccia Prada';

INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Comme des Garçons', 'Body Meets Dress, Dress Meets Body',
       'Spring/Summer', 1997, 'archived', NULL,
       'Rei Kawakubo challenged conventional silhouettes using asymmetrical padded forms.'
FROM designers WHERE full_name = 'Rei Kawakubo';

INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Anonymous Club', NULL, 'Resort', 2024,
       'archived', NULL,
       'The second Anonymous Club installment presented wardrobe staples through Shayne Oliver''s design language.'
FROM designers WHERE full_name = 'Shayne Oliver';

INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Telfar', NULL, 'Spring/Summer', 2020,
       'archived', NULL,
       'A Paris presentation pairing the collection with the collaborative film The World Isn''t Everything.'
FROM designers WHERE full_name = 'Telfar Clemens';

INSERT OR IGNORE INTO collections (
    designer_id, label, name, season, release_year,
    status, piece_count, description
)
SELECT id, 'Rick Owens', 'Vicious', 'Spring/Summer', 2014,
       'archived', 40,
       'A presentation performed by four step teams that challenged conventional runway casting and beauty standards.'
FROM designers WHERE full_name = 'Rick Owens';
