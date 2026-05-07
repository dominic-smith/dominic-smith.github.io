---
layout: page
title: Publications
permalink: /publications/
---

## Publications

<h3>Journal Articles</h3>
{% bibliography --query @article --template bib %}

<h3>Working Papers</h3>
{% bibliography --query @unpublished --template bib %}

<details>
	<summary>Download BibTeX</summary>
	<pre>{% bibliography %}</pre>
</details>

> Managed automatically via `jekyll-scholar`. Edit entries in `_bibliography/references.bib`.
