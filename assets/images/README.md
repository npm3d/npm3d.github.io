# Local dataset illustrations

The six dataset pages now point to local files in this directory.

Use `scripts/fetch_legacy_images.sh` once while `npm3d.fr` is still online, or run the GitHub Actions workflow **Fetch legacy NPM3D images**. It downloads the exact six illustrations currently used by the static site and commits them into this directory.

Expected files:

- `paris-lille-3d.jpg`
- `kitti-carla.jpg`
- `paris-carla-3d.jpg`
- `riedones3d.png`
- `simkitti32.png`
- `parisluco3d.png`

During the migration only, the dataset-page `<img>` elements fall back to the corresponding `npm3d.fr` URL if a local file is not yet present. Once all six files are committed, the site no longer needs the legacy server for its illustrations.
