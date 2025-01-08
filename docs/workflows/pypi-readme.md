## PYPI

[Example usage](https://github.com/daniel-mizsak/python-package-template/blob/main/.github/workflows/release.yml)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/pypi.yml@main
    with:
      # The working directory to run the workflow in.
      working-directory: "."

      # The environment to run the workflow in.
      environment: pypi

      # The python version to run the workflow with.
      python-version: "3.12"

    secrets:
      # The token to use for PyPI.
      PYPI_API_TOKEN: ${{ secrets.PYPI_API_TOKEN }}
```
