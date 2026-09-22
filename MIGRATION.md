# NPM3D GitHub Pages migration checklist

The site can be published immediately as `npm3d.github.io`. The only intentional placeholders are large-file download URLs and local copies of the legacy illustrations.

## 1. Create the GitHub repository

On the GitHub account `npm3d`, create a **public** repository named exactly:

`npm3d.github.io`

Upload all files in this directory to the repository root and push to the `main` branch. GitHub Pages normally publishes the user-site repository automatically; otherwise enable **Settings → Pages → Deploy from a branch → main / root**.

## 2. Add Cloud Mines links

Edit only:

`_data/downloads.yml`

Replace each empty `url: ""` by the permanent public Cloud Mines URL. The pages automatically turn “Cloud link to add” into active Download buttons.

## 3. Make the old illustrations independent from npm3d.fr

The first preview deliberately references the current `npm3d.fr/storage/...` images, so the site works immediately. Before switching off the legacy server, copy those assets into this repository and change `_data/datasets.yml` plus each page's `hero_image:` to local paths.

Suggested target files:

- `assets/images/paris-lille-3d.jpg`
- `assets/images/kitti-carla.jpg`
- `assets/images/paris-carla-3d.jpg`
- `assets/images/riedones3d.png`
- `assets/images/simkitti32.png`
- `assets/images/parisluco3d.png`

Legacy source URLs are documented in `_data/datasets.yml`.

## 4. Complete the Paris-Lille-3D ranking archive

Read `benchmark/BENCHMARK_RECOVERY.md`. Seventeen individual result pages were recovered, but the old dynamic leaderboard appears to contain additional historical rows. Export the complete table/database once before destroying the server, then fill the missing ranks in `_data/paris_lille_3d_leaderboard.yml`.

## 5. Publish test ground truths

For benchmarks that previously hid the test annotations, package the final ground truth with a concise `README` describing class IDs, expected file names and evaluation metric. Link it directly in `_data/downloads.yml`.

## 6. Optional: move npm3d.fr to GitHub Pages later

Once the GitHub version is validated, the existing domain can be pointed at GitHub Pages. Keep the current path names: this repository already preserves the important routes:

- `/paris-lille-3d/`
- `/kitti-carla/`
- `/paris-carla-3d/`
- `/coins-riedones3d/`
- `/simkitti32/`
- `/parisluco3d/`

Do not create a `CNAME` file until you actually want to attach the custom domain.

## GitHub Pages root URL

The repository must be named `npm3d.github.io`, not `npm3d`, if the desired public URL is `https://npm3d.github.io/`.
The Jekyll configuration intentionally uses an empty `baseurl` because this is a GitHub user site, not a project site.
