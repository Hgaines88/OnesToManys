-- Migration 003 matched the designer as "Demna Gvasalia", while the archive
-- stores the canonical designer name as "Demna". Add the missed video without
-- overwriting media selected by an archive editor.

INSERT OR IGNORE INTO collection_media (
    collection_id,
    media_type,
    media_value
)
SELECT collections.id, 'youtube', 'Yh_1K9s6UV0'
FROM collections
JOIN designers
    ON designers.id = collections.designer_id
WHERE designers.full_name = 'Demna'
    AND collections.label = 'Balenciaga'
    AND collections.season = 'Spring/Summer'
    AND collections.release_year = 2023;
