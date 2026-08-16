"""One-time cleanup: drop the release year duplicated inside collections.season.

Only the row's own release_year is removed, so a season such as
'Tokyo 2020 Olympics' with release_year 2021 is deliberately left alone.
"""

from __future__ import annotations

import argparse
import re
import sqlite3
from collections import defaultdict
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parent.parent
DEFAULT_DATABASE = PROJECT_ROOT / "data" / "archive.db"


def normalize(season: str, release_year: int) -> str:
    without_year = re.sub(rf"\b{release_year}\b", " ", season)
    return re.sub(r"\s+", " ", without_year).strip()


def build_plan(connection: sqlite3.Connection):
    rows = connection.execute(
        "SELECT id, designer_id, label, season, release_year FROM collections"
    ).fetchall()

    changes = []
    buckets = defaultdict(list)

    for row in rows:
        new_season = normalize(row["season"], row["release_year"])
        buckets[
            (row["designer_id"], row["label"], new_season, row["release_year"])
        ].append(row["id"])

        if new_season != row["season"]:
            changes.append((row["id"], row["season"], new_season))

    empties = [change for change in changes if not change[2]]
    collisions = {key: ids for key, ids in buckets.items() if len(ids) > 1}
    return changes, empties, collisions


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--database", type=Path, default=DEFAULT_DATABASE)
    parser.add_argument(
        "--apply",
        action="store_true",
        help="Write the changes. Without this flag the script only reports.",
    )
    args = parser.parse_args()

    connection = sqlite3.connect(args.database)
    connection.row_factory = sqlite3.Row
    connection.execute("PRAGMA foreign_keys = ON")

    try:
        changes, empties, collisions = build_plan(connection)

        print(f"{len(changes)} rows would change")
        for row_id, old, new in changes[:20]:
            print(f"  id={row_id:<5} {old!r} -> {new!r}")
        if len(changes) > 20:
            print(f"  ... and {len(changes) - 20} more")

        if empties:
            raise SystemExit(
                f"ABORT: {len(empties)} rows would end up with an empty season."
            )
        if collisions:
            print("ABORT: these would violate the UNIQUE constraint:")
            for key, ids in collisions.items():
                print(f"  {key} <- ids {ids}")
            raise SystemExit(1)

        if not args.apply:
            print("\nDry run only. Re-run with --apply to write.")
            return

        connection.execute("BEGIN IMMEDIATE")
        connection.executemany(
            "UPDATE collections SET season = ? WHERE id = ?",
            [(new, row_id) for row_id, _old, new in changes],
        )
        connection.commit()
        print(f"\nApplied {len(changes)} updates.")
    except Exception:
        connection.rollback()
        raise
    finally:
        connection.close()


if __name__ == "__main__":
    main()
