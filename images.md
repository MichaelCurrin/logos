---
title: Images
---

SVGs available in `assets/img`:

{% assign image_files = site.static_files | where: 'extname', '.svg' %}
{% for image in image_files %}
- [{{ image.name }}]({{ image.path | relative_url }})
{% endfor %}
