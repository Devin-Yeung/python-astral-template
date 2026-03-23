{
  pkgs,
  ...
}:
{
  scripts.uv-export-requirements.exec = ''
    uv export --no-hashes -o requirements.txt
    uv export --no-hashes --dev -o requirements-dev.txt
  '';
  # Keep the export hook close to the template because it maintains checked-in
  # artifacts that other tooling may consume.
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
}
