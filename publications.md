---
layout: page
title: Publications
permalink: /publications/
---

Every paper below has its own page carrying full citation metadata. A combined
BibTeX file is available at the bottom.

{% for section in site.paper_sections %}
{%- assign papers = site.papers | where: "section", section.key | sort: "weight" %}
{%- if papers.size > 0 %}
### {{ section.title }}

{% for paper in papers %}{% include paper-entry.html paper=paper %}
{% endfor %}
{%- endif %}
{%- endfor %}

<p><a href="/assets/bib/references.bib">Download all references (.bib)</a></p>
