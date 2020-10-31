#!/bin/bash -e
# Download logos.

cd assets/img

# Comments include the name on shields.io in case you use logo field there.
LOGOS=(
  ansible
  c
  circleci
  cmake
  css3
  dart
  deno
  docker
  eslint
  git
  github
  githubactions
  gnubash # gnu-bash
  go
  graphql
  html5
  java
  javascript
  jekyll
  kubernetes
  markdown
  mysql
  netlify
  nginx
  node-dot-js # node.js
  npm
  php
  postgresql
  python
  react
  ruby
  sqlite
  terraform
  typescript
  visualstudiocode
  vue-dot-js
  yarn
)

# FIXME If the curl returns 404, this won't stop the script so this must be handled still.

for LOGO in ${LOGOS[@]}; do
  # Useful for rapid development - skip existing files and do not try and update. Remove this step to updates.
  [ -f "$LOGO.svg" ] && continue

  echo $LOGO
  curl -O "https://simpleicons.org/icons/$LOGO.svg"
  sed -i '' \
    "s/\"img\"/\"img\" id=\"logo-$LOGO\"/g
    s/path/path fill=\"currentColor\"/g" \
    "$LOGO.svg"
done
