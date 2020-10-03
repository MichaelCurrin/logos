# Logos
> Programming-related SVG logos and styling served as static assets


## Features

- Store icons from SimpleIcons for select brands
- Customize attributes to make the SVGs more reusable.
- Serve SVGs as static assets.
- Provide optional CSS.


## About

### Simple Icons

This project is built on SVG icons downloaded from [simpleicons.org](https://simpleicons.org/).

Here is basic usage of an icon directly from that site:

```html
<img src="https://simpleicons.org/icons/python.svg" width="30" height="30" />
```

### Bundling

There are hundreds of icons there. So to make it easily to look-up the ones which are relevant to technologies and brands I use, I put them here in one place in a small repo.

I serve the assets as a static GitHub Pages site. And the load them on my other projects.

I can bundle all the logos in one file and then reference them by ID, to reduce the number of files to be fetched.

### Changes to SVGs

Another reason for using this repo is that I tweak the SVGs to suit my purposes and then easily reuse that across my repos, to avoid duplicating altered SVGs in all my projects.

Specifically, setting an `id` and `fill` values, so that I can reference an SVG using the `svg` HTML element (rather than `img`). And setting `fill="currentColor"` makes the SVG use the color of its parent element, making it easy to customize an SVG without using JavaScript.

Further, I collect the colors by hand from the repo (each brand has a hex color) and add this to CSS which can be applied in your `head` tag if needed. I also mark the color as light or dark, for readability. For example, if you use a dark purple color for a brand, then you need to use **white** for the SVG and text label and not **black**.

The hex colors can be found on the main Simple Icons website or in this [simple-icons.json](https://github.com/simple-icons/simple-icons/blob/develop/_data/simple-icons.json) in the repo.

### Updates

The latest SVGs can be downloaded to this repo using a script that is run manually, then committing the changes.

The script automates setting of appropriate custom values (`id` and `fill`), so that is applied each time whether updating or adding a logo. So that doesn't have to be done by editing a SVG file by hand.


### CSS

This project provides optional CSS for handling SVG colors or colors of a background behind the SVG or text label.

There is also CSS setting the size of the logo (or just copy the classes and dimensions to your repo).



## License

Released under [MIT](/LICENSE).

Rights for the logos belong to Simple Icons project and to the original brands.

See also the [simple-icons](https://github.com/simple-icons/simple-icons) GH repo for assets. An NPM package is listed there is too, if you want to use that for your project.
