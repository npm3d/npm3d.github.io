#!/usr/bin/env bash
set -euo pipefail

mkdir -p assets/images

fetch() {
  local url="$1"
  local output="$2"
  if [[ -s "$output" ]]; then
    echo "Already present: $output"
    return 0
  fi
  echo "Downloading $url -> $output"
  curl --fail --location --retry 4 --retry-delay 2 --connect-timeout 20 \
       --user-agent 'Mozilla/5.0 (NPM3D archive migration)' \
       "$url" --output "$output"
}

fetch 'https://npm3d.fr/storage/pages/August2018/Paris_Lille_3D_GT7.jpg' 'assets/images/paris-lille-3d.jpg'
fetch 'https://npm3d.fr/storage/pages/September2021/town01_lidar.jpg' 'assets/images/kitti-carla.jpg'
fetch 'https://npm3d.fr/storage/pages/November2021/soufflot.jpg' 'assets/images/paris-carla-3d.jpg'
fetch 'https://npm3d.fr/storage/pages/February2022/catcheye.png' 'assets/images/riedones3d.png'
fetch 'https://npm3d.fr/storage/pages/December2022/remotesensing-14-06262-g014_v2.png' 'assets/images/simkitti32.png'
fetch 'https://npm3d.fr/storage/pages/November2023/1800_modified.png' 'assets/images/parisluco3d.png'

echo "All legacy illustrations are present locally."
