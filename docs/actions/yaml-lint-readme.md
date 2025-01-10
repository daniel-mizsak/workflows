## YAML LINT

Lint Yaml files using yamllint.

[Example usage](#)

```yaml
    uses: daniel-mizsak/workflows/.github/actions/yaml-lint@main
    with:
      # Directory for running the action
      working_directory: "."

      # Configuration file, relative to the working directory
      config_file: ".yamllint"

      # Return non-zero exit code on warnings as well as errors
      strict: "false"
```

- Solution was heavily inspired by [action-yamllint](https://github.com/ibiqlik/action-yamllint)
