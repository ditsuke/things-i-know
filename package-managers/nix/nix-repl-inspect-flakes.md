The [[nix-repl]] is a fantastic tool to get the JavaScript (or Python) experience for Nix but as of 2024/02 its not entirely obvious how to use it with flakes. First, the traditional way:
```sh
nix repl
repl > :load-flake . # or :lf path/to/flake
# and we're good to go!
```

Nix is also working on native repl-flake integration, but curently requires an experimental flag (just like the rest of the flakes ecosystem):
```sh
nix --extra-experimental-features repl-flake repl ".#derivation-name"
```

References:
- https://discourse.nixos.org/t/use-repl-to-inspect-a-flake/28275