# The Glistix Playground

An interactive playground for the Glistix compiler to test Nix compilation.

Based on https://github.com/gleam-lang/playground.

```sh
# Set the Glistix version in the GLEAM_VERSION file
cat ./GLEAM_VERSION
# v0.5.0

# Download a wasm version of the Gleam compiler
./bin/download-compiler

# Build the site
gleam run

# It's now all the in `public/` directory
```
