# The Glistix Playground

An interactive playground for the Glistix compiler to test Nix compilation.

Based on https://github.com/gleam-lang/playground.

```sh
# Set the gleam version in the GLEAM_VERSION file
#./GLEAM_VERSION
v1.6.1

# Download a wasm version of the Gleam compiler
./bin/download-compiler

# Build the site
gleam run

# It's now all the in `public/` directory
```
