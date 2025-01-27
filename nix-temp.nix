# https://github.com/zmre/mac-nix-simple-example
# https://github.com/omerxx/dotfiles
# https://github.com/MatthiasBenaets/nix-config/blob/master/darwin.org
# https://github.com/caarlos0/dotfiles/blob/main/machines/shared/darwin.nix
{
  description = "Setting up everything with Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    nix-darwin,
    nix-homebrew,
  }: let
    mkSystem = import ./mksystem.nix {
      inherit nixpkgs inputs;
    };
  in {
    darwinConfigurations.macbook = mkSystem "macbook" {
      system = "aarch64-darwin";
      user = "damz";
      is-darwin = true;
    };
  };
}
