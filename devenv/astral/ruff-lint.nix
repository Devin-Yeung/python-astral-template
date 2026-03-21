{ ... }:
{
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
}
