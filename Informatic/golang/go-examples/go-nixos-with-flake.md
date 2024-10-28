---
tags:
    - ready
    - online
    - golang
    - nixos
    - flake
    - tutorial
    - setup
    - go
    - nix
---

# golang-nixos-with-flake

## Contents

- [tutorial](https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/)

## Setup a non existing project from scratch in nixos

### Init the project

- Add `main.go` file with the following content:

```go
package main

import (
 "fmt"
)

func main() {
 fmt.Println("hello")
}
```

- Add a initial `shell.nix` file with the following content:

```nix
# shell.nix
let
  # We pin to a specific nixpkgs commit for reproducibility.
  # Check for new commits at https://status.nixos.org.
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/d04953086551086b44b6f3c6b7eeb26294f207da.tar.gz") {};
in pkgs.mkShell {
  packages = [
    # select Go packages here
    pkgs.go_1_23 # desired version
  ];
}
```

- Configure environment to use  nix, create `.envrc` file with the following content:

```plain
use nix
```

- Start go mod init

```bash
go mod init <project>
```

- Add module requirements and sums

```bash
go mod tidy
```

- Delete the `shell.nix` file

## Follow the tutorial

- Follow the tutorial on [haseebmajid.dev](https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/)
