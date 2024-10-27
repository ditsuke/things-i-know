`nix flake lock --update-input <input-name>`

> NOTE:
> `nix flake update` updates _every_ input essentially recreating the lock file. `nix flake update <input>` DOES NOT update _inputs_ of the current flake, instead it'll try to update a flake with such path. (kind of stupid UI if you ask me)
