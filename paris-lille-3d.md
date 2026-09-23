---
layout: default
title: Paris-Lille-3D
dataset_year: 2018
lede: A large, high-quality, fully hand-annotated urban mobile-laser-scanning dataset for point-cloud semantic segmentation and classification.
hero_image: /assets/images/paris-lille-3d.jpg
legacy_hero_image: https://npm3d.fr/storage/pages/August2018/Paris_Lille_3D_GT7.jpg
hero_alt: Paris-Lille-3D point cloud with semantic labels
paper: https://doi.org/10.1177/0278364918767506
permalink: /paris-lille-3d/
---
{% include dataset_hero.html %}

<div class="prose" markdown="1">

<div class="stats">
  <div class="stat"><strong>143.1 M</strong><span>3D points</span></div>
  <div class="stat"><strong>~1.94 km</strong><span>MLS trajectory</span></div>
  <div class="stat"><strong>50</strong><span>manual classes</span></div>
  <div class="stat"><strong>10</strong><span>coarse benchmark classes</span></div>
</div>

## Overview

Paris-Lille-3D is a large-scale urban mobile-laser-scanning dataset acquired in **Paris and Lille, France**. The point cloud was manually labeled into **50 semantic classes** to support research on automatic 3D point-cloud segmentation and classification. The public benchmark evaluates predictions on a coarser set of the most represented semantic classes.

The original dataset and benchmark were introduced by Xavier Roynard, Jean-Emmanuel Deschaud and François Goulette. Raw acquisition data were later added to the public release.

<div class="callout archive">
<strong>Benchmark archive</strong>
The online submission service is now considered archived. The goal of this static version is to preserve the final published results while making the former test-set annotations publicly downloadable for fully offline and reproducible evaluation.
</div>

## Download {#download}

{% include downloads.html key="paris_lille_3d" %}

The new archive is intended to distribute **training data, test data and test ground truth directly**. No password is required by the website; if an archive is still password-protected during migration, it is preferable to repack it before publishing the final Cloud Mines link.

## Archived semantic-segmentation benchmark {#archived-benchmark}

Snapshot date: **22 September 2026**.

The table below contains the submissions whose individual result pages are still directly retrievable from the legacy NPM3D service. **Rank gaps are intentionally preserved**: several rows in the historical ranking no longer expose a retrievable detail page, so they have not been reconstructed from guesses. See `benchmark/BENCHMARK_RECOVERY.md` in the repository for the final archival check to perform before shutting down the old server.

<div class="benchmark-summary">
  <span class="pill"><strong>17</strong> verified legacy result pages</span>
  <span class="pill"><strong>9</strong> evaluation classes</span>
  <span class="pill">metric: mean IoU (%)</span>
</div>

<div class="table-scroll">
<table>
<thead><tr><th>Rank</th><th>Method</th><th>mIoU</th><th>Ground</th><th>Building</th><th>Pole</th><th>Bollard</th><th>Trash</th><th>Barrier</th><th>Pedestrian</th><th>Car</th><th>Natural</th><th>Resources</th></tr></thead>
<tbody>
{% for r in site.data.paris_lille_3d_leaderboard %}
<tr>
<td>{{ r.rank }}</td><td><strong>{{ r.method }}</strong></td><td><strong>{{ r.miou }}</strong></td><td>{{ r.ground }}</td><td>{{ r.building }}</td><td>{{ r.pole }}</td><td>{{ r.bollard }}</td><td>{{ r.trash }}</td><td>{{ r.barrier }}</td><td>{{ r.pedestrian }}</td><td>{{ r.car }}</td><td>{{ r.natural }}</td>
<td>{% if r.code %}<a class="code-link" href="{{ r.code }}">Code ↗</a>{% elsif r.paper %}<a class="code-link" href="{{ r.paper }}">Paper ↗</a>{% else %}<span class="rank-gap">—</span>{% endif %}</td>
</tr>
{% endfor %}
</tbody></table>
</div>

### Historical reference methods

The following methods are retained as **historical literature references**, not assigned a current rank in this archive because a matching individual 2026 result page was not recovered.

<div class="table-scroll">
<table>
<thead><tr><th>Rank</th><th>Method</th><th>mIoU</th><th>Ground</th><th>Building</th><th>Pole</th><th>Bollard</th><th>Trash</th><th>Barrier</th><th>Pedestrian</th><th>Car</th><th>Natural</th></tr></thead>
<tbody>{% for r in site.data.paris_lille_historical %}<tr><td>—</td><td><strong>{{ r.method }}</strong></td><td>{{ r.miou }}</td><td>{{ r.ground }}</td><td>{{ r.building }}</td><td>{{ r.pole }}</td><td>{{ r.bollard }}</td><td>{{ r.trash }}</td><td>{{ r.barrier }}</td><td>{{ r.pedestrian }}</td><td>{{ r.car }}</td><td>{{ r.natural }}</td></tr>{% endfor %}</tbody>
</table>
</div>

## Citation

If you use Paris-Lille-3D, please cite:

```bibtex
@article{roynard2018parislille3d,
  author  = {Xavier Roynard and Jean-Emmanuel Deschaud and François Goulette},
  title   = {Paris-Lille-3D: A large and high-quality ground-truth urban point cloud dataset for automatic segmentation and classification},
  journal = {The International Journal of Robotics Research},
  volume  = {37},
  number  = {6},
  pages   = {545--557},
  year    = {2018},
  doi     = {10.1177/0278364918767506}
}
```

**License:** Creative Commons Attribution–NonCommercial–NoDerivatives 3.0 (CC BY-NC-ND 3.0), as stated on the original NPM3D release.

</div>
