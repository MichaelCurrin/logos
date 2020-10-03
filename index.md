# Logos documentation
> Programming-related SVG logos and styling served as static assets

GitHub repo: [MichaelCurrin/logos](https://github.com/MichaelCurrin/logos)


## Features

- Store icons from SimpleIcons for select brands
- Customize attributes to make the SVGs more reusable.
- Serve SVGs as static assets.
- Provide optional CSS.


## Sample usage

### Code

{% raw %}
```liquid
{% assign name = 'cmake' %}
{% assign logo_base_url = 'https://michaelcurrin.github.io/logos/assets/img/' %}

<svg class="logo-small">
    <use xlink:href="{{ logo_base_url }}{{ name }}.svg#logo-{{ name }}"></use>
</svg>
```
{% endraw %}

Styling:

```css
.logo-small {
    width: 20px;
    height: 20px;
}

#logo-cmake {
    color: #064F8C;
}
```

### Result

{% assign name = 'cmake' %}
{% assign logo_base = 'https://michaelcurrin.github.io/logos/assets/img/' %}

<svg class="logo-small">
    <use xlink:href="{{ logo_base }}{{ name }}.svg#logo-{{ name }}"></use>
</svg>

<style>
/* On svg element. */
.logo-small {
    width: 20px;
    height: 20px;
}

/* On external svg asset loaded using `use`. */
#logo-cmake {
    color: #064F8C;
}
</style>


## About

### Built on Simple Icons

This project is built on SVG icons downloaded from [simpleicons.org](https://simpleicons.org/).

Here is basic usage of an icon directly from that site:

```html
<img src="https://simpleicons.org/icons/python.svg" width="30" height="30" />
```

### Bundling

There are hundreds of icons there. So to make it easily to look-up the ones which are relevant to technologies and brands I use, I put them here in one place in a small repo.

I serve the assets as a static GitHub Pages site. And the load them on my other projects.

- [michaelcurrin.github.io/logos/assets/img/cmake.svg](https://michaelcurrin.github.io/logos/assets/img/cmake.svg)

I can bundle all the logos in one file and then reference them by ID, to reduce the number of files to be fetched.

### Changes to SVGs

Another reason for using this repo is that I tweak the SVGs to suit my purposes and then easily reuse that across my repos, to avoid duplicating altered SVGs in all my projects.

If you use `img` for an SVG, you can't use CSS to change the color of the CSS. So I go for a different approach. A change I made is setting an `id` and `fill` values on each CSV. This combination allows reference an SVG using the `svg` HTML element (rather than `img`) and therefore also more control over the color by CSS set outside the SVG element.

Rather than hardcoding the color in the SVG, I go for a more flexible approach of setting `fill="currentColor"`, which makes the SVG use the color as set on the outer element (such as `div` or even of `svg` itself), making it easy to customize an SVG without using JavaScript.

Note that the ID used is `logo-python` for example, to avoid conflicts with a possible `python` ID elsewhere on the page where the SVG is used.

The size of the SVG can be controlled using a `class` set on the `svg` or outer `div` as `logo-small` or `logo-medium`. This is not set on the SVG itself, to allow freedom (though I might make small and medium versions of the SVGs under different URLs).

Further, I collect the colors by hand from the repo (each brand has a hex color) and add this to CSS which can be applied in your `head` tag if needed. I also mark the color as light or dark, for readability. For example, if you use a dark purple color for a brand, then you need to use **white** for the SVG and text label and not **black**.

The hex colors can be found on the main Simple Icons website or in this [simple-icons.json](https://github.com/simple-icons/simple-icons/blob/develop/_data/simple-icons.json) in the repo.

### Updates

The latest SVGs can be downloaded to this repo using a script that is run manually, then committing the changes.

The script automates setting of appropriate custom values (`id` and `fill`), so that is applied each time whether updating or adding a logo. So that doesn't have to be done by editing a SVG file by hand.

### CSS

This project provides optional CSS for handling SVG colors or colors of a background behind the SVG or text label.

There is also CSS setting the size of the logo (or just copy the classes and dimensions to your repo).
