---
layout: default
title: Home
description: NPM3D public datasets and archived benchmarks for 3D point-cloud research.
permalink: /
---
<section class="home-hero welcome-hero">
  <div>
    <span class="eyebrow">Mines Paris – PSL · 3D Point Cloud and Modeling</span>
    <h1>NPM3D<br><span>Datasets &amp; Benchmarks</span></h1>
    <p class="lede">A permanent public archive of research datasets for large-scale point clouds, LiDAR perception, simulation, domain generalization, registration and 3D cultural heritage.</p>
    <div class="hero-actions">
      <a class="button primary" href="#dataset-menu">Choose a dataset</a>
      <a class="button" href="{{ '/paris-lille-3d/#archived-benchmark' | relative_url }}">Paris-Lille-3D benchmark</a>
    </div>
  </div>

  <aside class="hero-panel welcome-panel">
    <span class="eyebrow">Research archive</span>
    <strong>6 public datasets</strong>
    <p>Each dataset now has its own dedicated page with description, download links, citation, code links when available, and archived benchmark information.</p>
    <p><small>No account or dynamic benchmark server is required.</small></p>
  </aside>
</section>

<section id="dataset-menu" class="dataset-menu-section">
  <div class="section-head">
    <div>
      <span class="eyebrow">Dataset menu</span>
      <h2>Choose a dataset</h2>
    </div>
    <p>Select a dataset to open its dedicated page.</p>
  </div>

  <nav class="home-dataset-menu" aria-label="Dataset pages">
  {% for dataset in site.data.datasets %}
    <a class="home-dataset-link" href="{{ dataset.path | relative_url }}">
      <span>
        <strong>{{ dataset.title }}</strong>
        <small>{{ dataset.summary }}</small>
      </span>
      <span class="dataset-year">{{ dataset.year }}</span>
    </a>
  {% endfor %}
  </nav>
</section>

<section class="prose home-about">
## About NPM3D

**NPM3D** stands for *Nuage de Points et Modélisation 3D* (“3D Point Cloud and Modeling”). This static website replaces the former dynamic benchmark portal with a low-maintenance public archive. Dataset descriptions, citations and historical benchmark results remain available, while large files can be served from the institutional Cloud Mines infrastructure.

The NPM3D research group is part of the Centre for Robotics at Mines Paris – PSL. [Research group ↗]({{ site.group_url }})
</section>
