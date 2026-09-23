---
layout: default
title: Home
description: NPM3D public datasets and benchmark results for 3D point-cloud research.
permalink: /
---
<section class="home-hero welcome-hero">
  <div>
    <span class="eyebrow">Mines Paris – PSL · 3D Point Cloud and Modeling</span>
    <h1>NPM3D<br><span>Datasets &amp; Benchmarks</span></h1>
    <p class="lede">A permanent public archive of research datasets for large-scale point clouds, LiDAR perception, simulation, domain generalization, registration and 3D cultural heritage.</p>
  </div>

  <aside class="hero-panel welcome-panel">
    <strong>6 public datasets</strong>
    <p>Dataset descriptions, downloads, citations, code links when available, and benchmark results are preserved on dedicated pages.</p>
    <p><small>No account or dynamic benchmark server is required.</small></p>
  </aside>
</section>

<section id="datasets" class="dataset-menu-section">
  <div class="section-head">
    <div>
      <span class="eyebrow">NPM3D collection</span>
      <h2>Datasets</h2>
    </div>
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
