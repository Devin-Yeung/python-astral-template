{
  lib,
  config,
  ...
}:
{

  options.astral.ty = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config = lib.mkIf config.astral.ty.enable {
    git-hooks.hooks = {
      ty = {
        enable = true;
        name = "ty check";
        entry = "ty check";
        types = [ "python" ];
        language = "system";
        pass_filenames = false;
      };
    };
  };
}
