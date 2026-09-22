---
layout: default
title: SimKITTI32
dataset_year: 2022
lede: A simulated Velodyne HDL-32 dataset inside a SemanticKITTI-derived virtual environment for studying LiDAR sensor-domain generalization.
hero_image: https://npm3d.fr/storage/pages/December2022/remotesensing-14-06262-g014_v2.png
hero_alt: SimKITTI32 LiDAR simulation
paper: https://doi.org/10.3390/rs14246262
permalink: /simkitti32/
---
{% include dataset_hero.html %}
<div class="prose">

## Overview

SimKITTI32 simulates a **Velodyne HDL-32** inside a virtual scene reconstructed from SemanticKITTI, whose original scans were acquired with a Velodyne HDL-64. The environment was modeled with **AdaSplats**, an adaptive splatting method for high-quality scene modeling and high-fidelity LiDAR simulation.

The dataset is designed to test **sensor-domain generalization**: can a semantic-segmentation model developed for one LiDAR configuration generalize to a different sensor while observing the same environment?

The HDL-32 simulation uses the modeled SemanticKITTI **sequence 08**, with a trajectory offset of `(0.0 m, 0.0 m, -0.5 m)` relative to the original trajectory. Semantic observations can be simulated up to **80 m**, compared with annotations up to 50 m in the original SemanticKITTI setup described by the legacy page. A simulated HDL-64 version was also generated for sequences 00–10 to compare real and simulated scans along the same trajectories.

## Download {#download}
{% include downloads.html key="simkitti32" %}

## Citation
Please cite the AdaSplats paper as well as the source SemanticKITTI and KITTI datasets.

```bibtex
@article{richa2022adasplats,
  author  = {Richa, Jean Pierre and Deschaud, Jean-Emmanuel and Goulette, François and Dalmasso, Nicolas},
  title   = {AdaSplats: Adaptive Splatting of Point Clouds for Accurate 3D Modeling and Real-Time High-Fidelity LiDAR Simulation},
  journal = {Remote Sensing},
  volume  = {14},
  number  = {24},
  year    = {2022},
  doi     = {10.3390/rs14246262}
}
```

- [SemanticKITTI paper](https://doi.org/10.1109/ICCV.2019.00939)
- [KITTI benchmark paper](https://doi.org/10.1109/CVPR.2012.6248074)

**License:** CC BY-NC-ND 3.0, as stated on the original release.
</div>
