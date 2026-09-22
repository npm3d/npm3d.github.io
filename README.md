# npm3d.github.io

Static website for the NPM3D public research datasets and archived benchmarks.

## Publish

1. Create the public GitHub repository `npm3d/npm3d.github.io`.
2. Copy this repository content to its root.
3. Push to `main`.
4. Open `https://npm3d.github.io/` after GitHub Pages has deployed.

No Ruby, npm package, database or server is required.

## What to edit first

- `_data/downloads.yml` — Cloud Mines download URLs.
- `benchmark/BENCHMARK_RECOVERY.md` — one final check of the Paris-Lille-3D ranking before decommissioning the legacy server.
- `MIGRATION.md` — copy legacy illustrations locally before `npm3d.fr` is shut down.

## Site architecture

- Dataset content: top-level Markdown pages.
- Navigation/home cards: `_data/datasets.yml`.
- Downloads: `_data/downloads.yml`.
- Paris-Lille-3D archived results: `_data/paris_lille_3d_leaderboard.yml`.
- Shared layout/components: `_layouts/` and `_includes/`.
- Styling: `assets/css/style.css`.
