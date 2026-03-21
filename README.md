# Astral Python Template

This is a template for Python projects that utilize the modern python ecosystem powered by `astral`.
The template is designed to help you get started quickly with a well-structured project layout and best practices for Python development.

## Known Issue

### Custom git-hooks in devenv does not refresh .pre-commit-config.yaml

This is very likely an upstream issue. If you find that the `.pre-commit-config.yaml` file is not being refreshed when you make changes to it, you can try the following workaround:

```bash
# Remove the cached evaluation result of nix files
rm -rf .devenv/nix-eval-cache.*

# Re-trigger the evaluation of devenv
direnv allow
```
