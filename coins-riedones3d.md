---
layout: default
title: Riedones3D
dataset_year: 2021
lede: A collection of 2,207 3D Celtic coin scans for pattern registration and fine-grained coin-die clustering.
hero_image: /assets/images/riedones3d.png
legacy_hero_image: https://npm3d.fr/storage/pages/February2022/catcheye.png
hero_alt: Riedones3D Celtic coin scans
paper: https://arxiv.org/abs/2109.15033
code: https://github.com/humanpose1/riedones3d
permalink: /coins-riedones3d/
---
{% include dataset_hero.html %}
<div class="prose" markdown="1">

<div class="stats">
  <div class="stat"><strong>2,207</strong><span>3D coin scans</span></div>
  <div class="stat"><strong>2</strong><span>benchmarks</span></div>
  <div class="stat"><strong>3D</strong><span>pattern registration</span></div>
  <div class="stat"><strong>Die</strong><span>fine-grained clustering</span></div>
</div>

## Overview

Coin-die clustering is important in numismatic research because grouping coins struck from the same die can reveal production organization and economic history, including periods with limited written sources. Public 3D datasets for this problem remain uncommon.

Riedones3D provides **2,207 three-dimensional scans of Celtic coins**, together with two dedicated evaluation subsets: one for registration of die patterns between point clouds and one for clustering coins according to their die.

## Download {#download}
{% include downloads.html key="riedones3d" %}

<div class="callout"><strong>Metadata requirement</strong>As stated on the original NPM3D page, any use of files from the archives must mention the associated information provided in <code>metadata.xlsx</code>.</div>

## Code
The reference pipeline for die recognition and clustering is available at [humanpose1/riedones3d](https://github.com/humanpose1/riedones3d).

## Citation
```bibtex
@inproceedings{horache2021riedones3d,
  booktitle = {Eurographics Workshop on Graphics and Cultural Heritage},
  editor    = {Hulusic, Vedad and Chalmers, Alan},
  title     = {Riedones3D: a Celtic Coin Dataset for Registration and Fine-grained Clustering},
  author    = {Horache, Sofiane and Deschaud, Jean-Emmanuel and Goulette, François and Gruel, Katherine and Lejars, Thierry and Masson, Olivier},
  year      = {2021},
  publisher = {The Eurographics Association},
  pages     = {83--92},
  doi       = {10.2312/gch.20211410}
}
```

**License:** CC BY-NC-ND 3.0, as stated on the original release.
</div>
