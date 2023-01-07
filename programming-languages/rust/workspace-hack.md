---
Aliases: workspace-hack crates
---

In multi-crate [[cargo-workspaces]], [[cargo|Cargo]] builds common dependencies of constituents with a union  of features enables to avoid building common crates multiple times.

With this said, what happens if Cargo needs to compile only a subset of the crates in the workspace? Cargo will build common deps with a union of features required by the crates being built, so recipes that require a subset of crates give rise to multiple divergent build configurations of common crates depending on the workspace crates being built. These divergent recipes mean a common dep `baz` built for member subset `s-1` will need to be recompiled for member subset `s-2`, wasting a lot of build time in large workspaces.

This is where `workspace-hack` crates come in. These crates contain all common dependencies of member crates in a workspace and are added as dependencies to all member crates, essentially forcing consistent compilation of common crates with a union of featured required by _all_ member crates.

Reference: [cargo_hakari/about](https://docs.rs/cargo-hakari/0.9.14/cargo_hakari/about/index.html#what-are-workspace-hack-crates)


## Challenges

Maintaining `workspace-hack` crates manually is hard because it entails keeping track of common deps, and keeping up-to-date feature lists as required by all member crates in a workspace. This is where tools like [[cargo-hakari]] come in to make `workspace-hack` practical.
