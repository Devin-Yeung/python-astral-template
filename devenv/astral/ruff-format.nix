{
  lib,
  config,
  ...
}:
{

  options.astral.format = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config = lib.mkIf config.astral.format.enable {
    git-hooks.hooks = {
      ruff-format = {
        enable = true;
        name = "ruff format";
        entry = "ruff format";
        types = [ "python" ];
        language = "system";
        pass_filenames = false;
      };
    };
  };
}
