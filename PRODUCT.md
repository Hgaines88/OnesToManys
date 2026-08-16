# Collection Archive v0.2.0

## Purpose

A public-facing archive that helps people discover which individual designers created collections for different fashion labels throughout their careers.

## v0.2.0 user stories

- As a user, I can view all archived designers so I can discover who created fashion collections.
- As a user, I can view the collections credited to a designer across different labels and seasons.
- As a user, I can open a collection to see its label, season, year, status, piece count, and description.
- As a user, I can follow a curated source or watch an official embedded runway video when available.
- As a user, I can add, edit, and delete designer (& collection) records.
- Before public deployment both user authentication and an audit system must be encoded ensuring only verified users can make archival edits (v1.0.0).  

## Home page

For a small archive, the home page can initially show every designer.
Larger archive should show only recent or featured designers with a separate
"View All" page.

## Designer page

Full Name, Country/Nationality, Birth Year, Website. Background/Bio

## Collection page

Each collection page should show basic details about each collection:
Lead Designer
Label/Fashion House
Season
Release Year
Status (archived, released, concept, in-production, etc)
Piece Count
Description
Curated source link
Official YouTube runway video

## v0.2.0 features

CRUD functionality for Designers & Collections by any/all users.

## Future features

What are we deliberately postponing for v1.0.0?
- Postponing Authentication (login) for authorized edits vs everyday users. Every edit: record the author, timestamp, previous value, and reason for the change
- Direct image uploads and image hosting remain postponed. Collection pages can include curated source links and official YouTube embeds.
- Support for multiple credited designers on one collection through a
`collection_designers` junction table. This would extend the v0.2.0
designer-to-collections model for collaborations and co-designer credits.
- Authentication, Role-based permissions, edit history, rollback, and a small moderation queue.

---

*(h)gaines.*
