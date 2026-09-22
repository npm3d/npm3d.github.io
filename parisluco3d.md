---
layout: default
title: ParisLuco3D
dataset_year: 2023
lede: A high-quality target dataset designed for cross-domain evaluation and domain generalization of LiDAR perception.
hero_image: https://npm3d.fr/storage/pages/November2023/1800_modified.png
hero_alt: ParisLuco3D LiDAR point cloud
paper: https://arxiv.org/abs/2310.16542
permalink: /parisluco3d/
---
{% include dataset_hero.html %}
<div class="prose">

## Overview

ParisLuco3D is designed as a **target-domain dataset** for evaluating how LiDAR perception models generalize beyond their training datasets. The release includes dataset documentation, evaluation scripts and ground-truth scans.

The original NPM3D portal linked an online CodaLab semantic-segmentation benchmark. This static archive instead preserves the last published result tables and is intended to expose the ground truth for offline evaluation.

## Download {#download}
{% include downloads.html key="parisluco3d" %}

## Archived semantic-segmentation results

The legacy page states that the following table was last edited in **December 2023**.

### SemanticKITTI → ParisLuco3D · 19 classes
| Method | Source mIoU | ParisLuco3D mIoU | Reference |
|---|---:|---:|---|
| SRUNet + RayDrop trained on SemanticKITTI | 61.7 | 37.0 | [ParisLuco3D](https://arxiv.org/abs/2310.16542) |

### nuScenes → ParisLuco3D · 16 classes
| Method | Source mIoU | ParisLuco3D mIoU | Reference |
|---|---:|---:|---|
| SRUNet + IBN-Net trained on nuScenes | 67.3 | 35.6 | [ParisLuco3D](https://arxiv.org/abs/2310.16542) |

### COLA multi-source → ParisLuco3D · 7 classes
| Method | ParisLuco3D mIoU | Reference |
|---|---:|---|
| Cylinder3D trained on SemanticKITTI + nuScenes + KITTI-360 + Waymo | 68.3 | [COLA](https://arxiv.org/abs/2311.03017) |

The old portal contained “to appear soon” placeholders for LiDAR object detection and tracking but no result tables; those placeholders are not presented as active benchmarks here.

## Citation
```bibtex
@article{sanchez2023parisluco3d,
  author  = {Sanchez, Jules and Soum-Fontez, Louis and Deschaud, Jean-Emmanuel and Goulette, Francois},
  title   = {ParisLuco3D: A high-quality target dataset for domain generalization of LiDAR perception},
  journal = {arXiv e-prints},
  year    = {2023},
  eid     = {arXiv:2310.16542},
  doi     = {10.48550/arXiv.2310.16542}
}
```

**License:** CC BY-NC-ND 3.0, as stated on the original release.
</div>
