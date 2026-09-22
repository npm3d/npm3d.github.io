# npm3d.github.io

Static website for the NPM3D public research datasets and archived benchmarks.

## Important: repository name

For the website to be published at exactly:

`https://npm3d.github.io/`

the GitHub account must be named `npm3d` and the repository **must be named exactly**:

`npm3d.github.io`

A repository named only `npm3d` is a GitHub *project site* and is therefore published under:

`https://npm3d.github.io/npm3d/`

If your current repository is named `npm3d`, rename it in **Settings → General → Repository name** to `npm3d.github.io`.

## Publish

1. Use the public repository `npm3d/npm3d.github.io`.
2. Copy this repository content to its root (not inside an additional folder).
3. Push to `main`.
4. In **Settings → Pages**, keep GitHub Pages enabled for this repository.
5. Open `https://npm3d.github.io/` after deployment.

The configuration is already set for a root user site:

```yaml
url: "https://npm3d.github.io"
baseurl: ""
```

No Ruby, npm package, database or server is required on your machine.

## Page URLs

The six dataset pages are generated at:

- `/paris-lille-3d/`
- `/kitti-carla/`
- `/paris-carla-3d/`
- `/coins-riedones3d/`
- `/simkitti32/`
- `/parisluco3d/`

The home page contains only the welcome information and a dataset menu; each dataset has its own dedicated page.

## What to edit first

- `_data/downloads.yml` — Cloud Mines download URLs.
- `benchmark/BENCHMARK_RECOVERY.md` — one final check of the Paris-Lille-3D ranking before decommissioning the legacy server.
- `MIGRATION.md` — copy legacy illustrations locally before `npm3d.fr` is shut down.

## Site architecture

- Dataset content: top-level Markdown pages with explicit permalinks.
- Dataset menu: `_data/datasets.yml`.
- Downloads: `_data/downloads.yml`.
- Paris-Lille-3D archived results: `_data/paris_lille_3d_leaderboard.yml`.
- Shared layout/components: `_layouts/` and `_includes/`.
- Styling: `assets/css/style.css`.
