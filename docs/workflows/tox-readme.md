## TOX

Python CI/CD.

[Example usage](https://github.com/daniel-mizsak/python-package-template/blob/main/.github/workflows/ci.yml)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/tox.yml@main
    with:
      # Directory for running the workflow
      working_directory: "."

      # List of python versions, must correspond to tox configuration
      python_versions: "['3.12']"

      # Whether to upload coverage artifacts
      codecov: false

      # Whether to upload documentation artifacts
      docs: false

    secrets:
      # Token to use for codecov.
      CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN }}
```
