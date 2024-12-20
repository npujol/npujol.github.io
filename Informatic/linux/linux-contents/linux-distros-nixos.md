---
tags:
- ready
- online
- reviewed
- linux
- operative-system
- nixos
---

# Linux Distros Nixos

## Emanote tutorial

```nix
{
  nixConfig = {
    extra-substituters = "https://cache.garnix.io";
    extra-trusted-public-keys = "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g=";
  };

  inputs = {
    emanote.url = "github:srid/emanote";
    emanote.inputs.emanote-template.follows = "";
    nixpkgs.follows = "emanote/nixpkgs";
    flake-parts.follows = "emanote/flake-parts";
  };

  outputs = inputs@{ self, flake-parts, nixpkgs, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [ inputs.emanote.flakeModule ];
      perSystem = { self', pkgs, system, ... }: {
        emanote = {
          # By default, the 'emanote' flake input is used.
          # package = inputs.emanote.packages.${system}.default;
          sites."default" = {
            layers = [{ path = ./.; pathString = "."; }];
            # port = 8080;
            baseUrl = "/"; # Change to "/" (or remove it entirely) if using CNAME
            # prettyUrls = true;
          };
        };
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.nixpkgs-fmt
          ];
        };
        formatter = pkgs.nixpkgs-fmt;
      };
    };
}
```

## Missing  `libstdc++.so.6`

Export the `LD_PRELOAD` in the shell.

```nix
export LD_PRELOAD="$LD_PRELOAD:${pkgs.stdenv.cc.cc.lib}/lib/libstdc++.so.6"
```

Example of usage:

* tts_stories: flake.nix