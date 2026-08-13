---
layout: page
title: Home
permalink: /
---

<img src="/assets/img/IMG_0436.jpeg" alt="Dominic Smith" class="headshot">

I am a Research Economist at the U.S. Bureau of Labor Statistics and Adjunct Professor at Case Western Reserve University.

My research focuses on inflation and the U.S. retail sector. I have also worked on measuring trade prices and expanding economic measurement in general.

Current Roles:  
Research Economist, U.S. Bureau of Labor Statistics - [smith.dominic@bls.gov](mailto:smith.dominic@bls.gov)  
Adjunct Professor, Case Western Reserve University - [das61@case.edu](mailto:das61@case.edu)

<section id="research" markdown="1">

## Research

{% for section in site.paper_sections %}
{%- assign papers = site.papers | where: "section", section.key | sort: "weight" %}
{%- if papers.size > 0 %}
### {{ section.title }}

{% for paper in papers %}{% include paper-entry.html paper=paper %}
{% endfor %}
{%- endif %}
{%- endfor %}

</section>
