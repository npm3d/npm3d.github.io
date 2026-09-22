---
layout: default
title: Home
description: NPM3D public datasets and archived benchmarks for 3D point-cloud research.
permalink: /
---
<section class="home-hero">
  <div>
    <span class="eyebrow">Mines Paris – PSL · 3D Point Cloud and Modeling</span>
    <h1>Open 3D datasets.<br><span>Long-term access.</span></h1>
    <p class="lede">NPM3D provides research datasets for large-scale point clouds, LiDAR perception, simulation, domain generalization, registration and cultural-heritage 3D analysis.</p>
    <div class="hero-actions">
      <a class="button primary" href="#datasets">Browse datasets</a>
      <a class="button" href="/paris-lille-3d/#archived-benchmark">Archived benchmark</a>
    </div>
  </div>
  <aside class="hero-panel">
    <span class="eyebrow">Static research archive</span>
    <strong>6 datasets</strong>
    <p>No account, no benchmark server, no dynamic backend. Data downloads are intended to be hosted on permanent public Cloud Mines links.</p>
    <p><small>The former online benchmarks are being preserved as frozen, reproducible result tables.</small></p>
  </aside>
</section>

<section id="datasets">
  <div class="section-head">
    <div><span class="eyebrow">Datasets</span><h2>NPM3D collection</h2></div>
    <p>From urban MLS and autonomous-driving LiDAR to simulated sensor domains and 3D cultural heritage.</p>
  </div>
  <div class="dataset-grid">
  {% for dataset in site.data.datasets %}
    <article class="dataset-card">
      <a href="{{ dataset.path }}"><img src="{{ dataset.image }}" alt="{{ dataset.title }} preview" loading="lazy"></a>
      <div class="dataset-card-body">
        <span class="eyebrow">{{ dataset.year }}</span>
        <h3><a href="{{ dataset.path }}">{{ dataset.title }}</a></h3>
        <p>{{ dataset.summary }}</p>
        <div class="tags">{% for tag in dataset.tags %}<span class="tag">{{ tag }}</span>{% endfor %}</div>
      </div>
    </article>
  {% endfor %}
  </div>
</section>

<section class="prose">
## About NPM3D

**NPM3D** stands for *Nuage de Points et Modélisation 3D* (“3D Point Cloud and Modeling”). This static site replaces the former dynamic benchmark portal with a low-maintenance public archive. Dataset descriptions, citations and historical benchmark results remain online, while large files can be served from the institutional Cloud Mines infrastructure.

The NPM3D research group is part of the Centre for Robotics at Mines Paris – PSL. [Research group ↗]({{ site.group_url }})
</section>
