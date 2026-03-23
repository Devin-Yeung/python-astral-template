{
  lib,
  config,
  ...
}:
{
  options.astral.uv-export = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };

  config = lib.mkIf config.astral.uv-export.enable {
    scripts.uv-export-requirements.exec = ''
      uv export --no-hashes -o requirements.txt
      uv export --no-hashes --dev -o requirements-dev.txt
    '';

    git-hooks.hooks = {
      uv-export = {
        enable = true;
        name = "sync uv exports";
        entry = "uv-export-requirements";
        files = "^(pyproject\\.toml|uv\\.lock)$";
        language = "system";
        pass_filenames = false;
        require_serial = true;
        types = [ "file" ];
      };
    };
  };

}
