## YAML LINT

Lint Yaml files using yamllint

[Example usage](https://github.com/daniel-mizsak/mtjd/blob/main/.github/workflows/ci.yml)

```yaml
    uses: daniel-mizsak/workflows/.github/actions/yaml-lint@v1
    with:
      # Directory for running the action
      working_directory: "."

      # Configuration file, relative to the working directory
      config_file: ".yamllint.yml"

      # Return non-zero exit code on warnings as well as errors
      strict: "false"
```

- Solution was heavily inspired by [action-yamllint](https://github.com/ibiqlik/action-yamllint)
