# Icons
> Static programming-related icons served as static assets


## Purpose

This project is built on SVG icons downloaded from [simpleicons.org](https://simpleicons.org/). 

There are hundreds of icons there. So to make it easily to look-up the ones which are relevant to technologies and brands I use, I put them here in one place in a small repo. I then reference these logos on this static site, when working on my other projects.

### Changes to SVGs

Another reason for using this repo is that I tweak the SVGs to suit my purposes. Specifically, setting an `id` and `fill` values, so that I can reference an SVG using the `svg` HTML element (rather than `img`). And setting `fill="currentColor"` makes the SVG use the color of its parent element, making it easy to customize an SVG without using JavaScript.

Further, I collect the colors by hand from the repo (each brand has a hex color) and add this to CSS which can be applied in your `head` tag if needed. I also mark the color as light or dark, for readability. For example, if you use a dark purple color for a brand, then you need to use **white** for the SVG and text label and not **black**.

### Resources

See also the [simple-icons](https://github.com/simple-icons/simple-icons) GH repo for assets. An NPM package is listed there is too.
