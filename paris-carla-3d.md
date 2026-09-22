---
layout: default
title: Paris-CARLA-3D
dataset_year: 2021
lede: Real and synthetic dense outdoor point clouds designed for challenging 3D mapping tasks and synthetic-to-real transfer.
hero_image: https://npm3d.fr/storage/pages/November2021/soufflot.jpg
hero_alt: Paris-CARLA-3D semantically annotated Paris point cloud
paper: https://doi.org/10.3390/rs13224713
code: https://github.com/jedeschaud/paris_carla_simulator
permalink: /paris-carla-3d/
---
{% include dataset_hero.html %}
<div class="prose">

<div class="stats">
  <div class="stat"><strong>~700 M</strong><span>synthetic points</span></div>
  <div class="stat"><strong>~60 M</strong><span>real Paris points</span></div>
  <div class="stat"><strong>3</strong><span>core 3D tasks</span></div>
  <div class="stat"><strong>CARLA 0.9.10</strong><span>simulator</span></div>
</div>

## Overview

Paris-CARLA-3D contains dense colored point clouds from two complementary domains: **synthetic scenes generated in CARLA** and **real mobile-mapping acquisitions in Paris**. The virtual sensor platform reproduces the LiDAR/camera configuration used for the real acquisition, and the real point clouds were manually annotated using semantic classes aligned with CARLA tags.

This design supports controlled research on **synthetic-to-real transfer** as well as semantic segmentation, instance segmentation and scene completion.

## Download {#download}
{% include downloads.html key="paris_carla_3d" %}

## Generator
[Python scripts for CARLA 0.9.10 ↗](https://github.com/jedeschaud/paris_carla_simulator)

## Archived benchmark results

These tables preserve the results published on the original NPM3D page. The benchmark is static; no new online submissions are expected.

### Supervised semantic segmentation on Paris

| Method | Overall mIoU | S0 mIoU | S3 mIoU | Reference |
|---|---:|---:|---:|---|
| KPConv | 51.7 | 45.2 | 62.9 | [Paper](https://arxiv.org/abs/1904.08889) |
| PointNet++ | 19.9 | 13.9 | 25.8 | [Paper](https://arxiv.org/abs/1706.02413) |

### Unsupervised domain adaptation: CARLA → Paris

| Method | Overall mIoU | S0 mIoU | S3 mIoU | Reference |
|---|---:|---:|---:|---|
| KPConv (source only) | 19.2 | 20.6 | 17.7 | [Paper](https://arxiv.org/abs/1904.08889) |

### Supervised instance segmentation

| Method | SM | PQ | mIoU | Reference |
|---|---:|---:|---:|---|
| KPConv + Mathematical Morphology | 55.3 | 38.4 | 44.2 | [Paris-CARLA-3D paper](https://doi.org/10.3390/rs13224713) |

### Scene completion

| Method | Chamfer distance | Reference |
|---|---:|---|
| SG-NN with Hoppe TSDF | 7.5 cm | [Paris-CARLA-3D paper](https://doi.org/10.3390/rs13224713) |

The legacy page announced full-scene completion and novel-view-synthesis benchmarks as “to appear soon”; no archived results were published there, so those placeholder sections are omitted from this static version.

## Citation
```bibtex
@article{deschaud2021pariscarla3d,
  author  = {Deschaud, Jean-Emmanuel and Duque, David and Richa, Jean Pierre and Velasco-Forero, Santiago and Marcotegui, Beatriz and Goulette, François},
  title   = {Paris-CARLA-3D: A Real and Synthetic Outdoor Point Cloud Dataset for Challenging Tasks in 3D Mapping},
  journal = {Remote Sensing},
  volume  = {13},
  number  = {22},
  year    = {2021},
  doi     = {10.3390/rs13224713}
}
```

**License:** CC BY-NC-ND 3.0, as stated on the original release.
</div>
