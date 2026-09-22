# Paris-Lille-3D benchmark archival note

This file is **repository maintenance documentation** and is excluded from the published Jekyll site.

## Snapshot

The `paris_lille_3d_leaderboard.yml` snapshot was assembled on **2026-09-22** from individual public result pages still retrievable on `npm3d.fr`.

Verified detail-page ranks recovered: **1–13, 15, 16, 19 and 21** (17 entries).

The legacy benchmark UI reports positions beyond those entries, but its main ranking table is generated in a way that was not completely recoverable through a static text crawl. For archival integrity, the new site deliberately keeps rank gaps instead of filling them by inference.

## Strongly recommended final step before switching off the old server

Export the original ranking from either:

1. the application/database, or
2. the rendered browser table (copy/paste or HTML export).

Then compare it with `_data/paris_lille_3d_leaderboard.yml` and add any missing rows. **Do not renumber the currently recovered rows.**

Potential historical reference methods such as `SPH3D-GCN`, `HDGCN` and `RF_MSSF` are stored separately in `_data/paris_lille_historical.yml`; they are *not* assigned a 2026 rank unless that rank can be confirmed from the original application.

## Code links

Code links have been preserved when either the legacy submission gave a repository URL or an unambiguous official implementation was found. `SFL_Net` is a special case: the legacy record says “Source code: Yes” but contains no URL, so no repository is guessed.
