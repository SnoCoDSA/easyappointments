{ pkgs ? import <nixpkgs> {}}:

# provision a few admin tools for this project. if you have nix-direnv
# (https://github.com/nix-community/nix-direnv), these tools will
# automatically be provisioned as soon as you CD into this
# project. Changes to this file will refresh the env but if needed you
# can also run touch .envrc.
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.php74Packages.composer
    pkgs.nodejs
    pkgs.docker-compose
    pkgs.git
  ];
}
