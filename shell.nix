# use command nix-shell to enter an environment with the following dependencies

# locks to a specific version of nixpkgs for reproducible environment
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.11.tar.gz") {} }:

# search for packages: https://search.nixos.org/packages
pkgs.mkShell {
  buildInputs = [
    # node version (comes with npm)
    pkgs.nodejs_20
    # *globally* installed node package
    # pkgs.nodePackages.aws-cdk
    # *keep in mind* local npm install works if you don't need the package globally
  ];
}

# more info here including hooks and env vars
# https://nixos.org/guides/declarative-and-reproducible-developer-environments.html#declarative-reproducible-envs
