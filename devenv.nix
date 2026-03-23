{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  imports = [
    ./devenv/astral
  ];

  # https://devenv.sh/packages/
  packages = [ ];

  # https://devenv.sh/languages/
  languages = {
    nix.enable = true;
  };

  # https://devenv.sh/basics/
  enterShell = ''
    python3 --version
  '';

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    nixfmt.enable = true;
  };

  # astral toolchain
  astral = {
    lint.enable = true;
    format.enable = true;
    ty.enable = true;
    uv-export.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
