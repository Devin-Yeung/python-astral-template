{ ... }:
{
  git-hooks.hooks = {
    ty = {
      enable = true;
      name = "type check";
      entry = "ty check";
      types = [ "python" ];
      language = "system";
      pass_filenames = false;
    };
  };
}
