{
  lib,
  config,
  ...
}:
{

  options.astral.lint = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config = lib.mkIf config.astral.lint.enable {
    git-hooks.hooks = {
      ruff-lint = {
        enable = true;
        name = "ruff lint";
        entry = "ruff check";
        types = [ "python" ];
        language = "system";
        pass_filenames = false;
      };
    };
  };
}
