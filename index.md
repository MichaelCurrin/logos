---
title:
---
> Programming-related SVG logos and styling served as static assets

GitHub repo: [MichaelCurrin/logos](https://github.com/MichaelCurrin/logos)


## Features

- Store icons from SimpleIcons for select brands
- Customize attributes to make the SVGs more reusable.
- Serve SVGs as static assets.
- Provide optional CSS.


## Sample usage

Here we have a demo of how to take a logo like `jekyll.svg` and use it on a page.

- [michaelcurrin.github.io/logos/assets/img/jekyll.svg](https://michaelcurrin.github.io/logos/assets/img/jekyll.svg)


### Code

{% raw %}
```liquid
{% assign logo_base_url = 'https://michaelcurrin.github.io/logos/assets/img/' %}
{% assign name = 'jekyll' %}

<svg class="logo-small">
    <use xlink:href="{{ logo_base_url }}{{ name }}.svg#logo-{{ name }}"></use>
</svg>
<span>Jekyll logo</span>
```
{% endraw %}

Styling:

```css
/* On svg element. */
.logo-large {
    width: 40px;
    height: 40px;
}

/* On external svg asset loaded using `use`. */
#logo-jekyll {
    color: #064F8C;
}
```

### Result

<!-- Note - this won't load on localhost for security reasons. -->

{% assign logo_base = 'https://michaelcurrin.github.io/logos/assets/img/' %}
{% assign name = 'jekyll' %}

<svg class="logo-small">
    <use xlink:href="{{ logo_base }}{{ name }}.svg#logo-{{ name }}"></use>
</svg>
<span>Jekyll logo</span>

<style>
/* On svg element. */
.logo-large {
    width: 40px;
    height: 40px;
}

/* On external svg asset loaded using `use`. */
#logo-jekyll {
    color: #064F8C;
}
</style>
