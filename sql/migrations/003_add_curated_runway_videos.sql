-- Curated collection films from official brands or verified runway archives.
-- INSERT OR IGNORE preserves any video already chosen by an archive editor.

INSERT OR IGNORE INTO collection_media (
    collection_id,
    media_type,
    media_value
)
SELECT collections.id, 'youtube', curated.youtube_video_id
FROM collections
JOIN designers
    ON designers.id = collections.designer_id
JOIN (
    SELECT
        'Sarah Burton' AS designer_name,
        'Givenchy' AS label,
        'Fall/Winter' AS season,
        2025 AS release_year,
        '6K37zIVNpJI' AS youtube_video_id
    UNION ALL SELECT
        'Sarah Burton', 'Alexander McQueen', 'Spring/Summer', 2024,
        'EASTZ800WHA'
    UNION ALL SELECT
        'Lee Alexander McQueen', 'Alexander McQueen',
        'Spring/Summer', 1999, 'Qv8Hx3cWB74'
    UNION ALL SELECT
        'Grace Wales Bonner', 'Wales Bonner',
        'Spring/Summer', 2024, 'akJxFSRW03U'
    UNION ALL SELECT
        'Jonathan Anderson', 'JW Anderson',
        'Spring/Summer', 2024, 'oYtZVDZWCes'
    UNION ALL SELECT
        'Junya Watanabe', 'Junya Watanabe MAN',
        'Spring/Summer', 2025, 'vQCKQaweG3M'
    UNION ALL SELECT
        'Miuccia Prada', 'Prada',
        'Spring/Summer', 2012, 'JgaGXv1XnrA'
    UNION ALL SELECT
        'Demna', 'Balenciaga',
        'Spring/Summer', 2023, 'Yh_1K9s6UV0'
    UNION ALL SELECT
        'Virgil Abloh', 'Louis Vuitton',
        'Spring/Summer', 2019, 'I1AqjvdiubA'
) AS curated
    ON designers.full_name = curated.designer_name
    AND collections.label = curated.label
    AND collections.season = curated.season
    AND collections.release_year = curated.release_year;
