## TOX

Python CI/CD

[Example usage](https://github.com/daniel-mizsak/python-package-template/blob/main/.github/workflows/ci.yml)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/tox.yml@v1
    with:
      # Directory for running the workflow
      working_directory: "."

      # List of python versions, must correspond to tox configuration
      python_versions: "['3.12']"

      # Whether to upload coverage artifacts and publish to codecov
      # It assumes that tox (somewhere) generates .tox/artifacts/coverage.xml
      codecov: false

    secrets:
      # Token to use for codecov
      CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN }}
```
