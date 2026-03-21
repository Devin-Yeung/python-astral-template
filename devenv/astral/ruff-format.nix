{ ... }:
{
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
}
