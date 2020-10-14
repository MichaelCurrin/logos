#!/bin/bash -e
# Download logos.

cd assets/img

# Comments include the name on shields.io in case you use logo field there.
LOGOS=(
  c
  python
  java
  php
  \
  cmake
  gnubash # gnu-bash
  \
  docker
  kubernetes
  \
  git
  github
  githubactions
  \
  markdown
  html5
  css3
  \
  ruby
  jekyll
  \
  go
  \
  graphql
  \
  visualstudiocode
  \
  javascript
  typescript
  npm
  node-dot-js # node.js
  deno
  yarn
  \
  mysql
  sqlite
  postgresql
  \
  netlify
  \
  terraform
)

# FIXME If the curl returns 404, this won't stop the script so this must be handled still.

for LOGO in ${LOGOS[@]}; do
  # Useful for development - skip existing files. Turn this off for updates.
  # [ -f "$LOGO.svg" ] && continue

  echo $LOGO
  curl -O "https://simpleicons.org/icons/$LOGO.svg"
  sed -i '' \
    "s/\"img\"/\"img\" id=\"logo-$LOGO\"/g
    s/path/path fill=\"currentColor\"/g" \
    "$LOGO.svg"
done
