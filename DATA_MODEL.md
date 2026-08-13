# Collection Archive Data Model

## Designer

Represents an individual fashion designer.

| Field | Meaning | Required? |
|---|---|---|
| id | Internal unique identifier | Yes |
| full_name | Designer’s full name | Yes |
| nationality | Designer’s nationality | No |
| birth_year | Year the designer was born | No |
| website | Designer’s official website | No |
| biography | Background and career information | No |

## Collection

Represents a collection credited to one lead designer.

| Field | Meaning | Required? |
|---|---|---|
| id | Internal unique identifier | Yes |
| designer_id | Identifies the lead designer | Yes |
| label | Label or fashion house that released it | Yes |
| name | Collection’s given name, if it has one | No |
| season | Fashion season, such as Spring/Summer | Yes |
| release_year | Year it was released or planned | Yes |
| status | Concept, in production, released, or archived | Yes |
| piece_count | Number of looks or pieces | No |
| description | Collection notes and context | No |

A collection name is optional because many fashion collections are unnamed or eponymous and are instead identified by label, season, and year.

## Relationship rules

- One designer may have zero or many collections.
- Every collection must reference one existing designer.
- Deleting a designer deletes their collection records.
