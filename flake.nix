{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "aarch64-darwin";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = [
        pkgs.hugo
        pkgs.python3
        pkgs.git
        pkgs.pre-commit
      ];
    };
    formatter.${system} = pkgs.nixpkgs-fmt;
  };
}
