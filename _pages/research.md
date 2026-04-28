---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
header:
  og_image: "research/film.gif"
---

My research focuses on **thin film flows** under the influence of **thermal fluctuations**, fluid stability, and **stochastic lubrication equations**. I am particularly interested in the dynamics of curvature-driven droplet migration.

## Research Topics

- **Thin Film Flow**: Interfacial phenomena and stability of thin liquid films
- **Thermal Fluctuations**: Effects of thermal noise on fluid dynamics at small scales
- **Stochastic Lubrication**: Brownian motion and stochastic processes in lubricating systems
- **Droplet Migration**: Dynamics of droplets driven by curvature gradients

## Ongoing Projects

### Study on the Dynamics of Curvature-Driven Droplet Migration
*National-level College Students' Innovation and Entrepreneurship Training Program*

This project investigates the mechanisms governing droplet migration induced by curvature effects, with applications in microfluidic devices and coating processes.

<video width="100%" controls autoplay loop muted>
  <source src="/images/research/film.gif" type="image/gif">
</video>

&nbsp;

{% include base_path %}

{% assign ordered_pages = site.research | sort:"order_number" %}

{% for post in ordered_pages %}
  {% include archive-single.html type="grid" %}
{% endfor %}
