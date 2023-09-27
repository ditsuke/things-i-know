Simple answer: `nix-store --query --requisites /path/to/derivation`

- In case of a nix flake build the path is often simply `result/`
- The flags can be simplified to: `nix-store -qR /path/to/derivation`
