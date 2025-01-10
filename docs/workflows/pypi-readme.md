## PYPI

Publish Python package to PyPI.

[Example usage](https://github.com/daniel-mizsak/python-package-template/blob/main/.github/workflows/release.yml)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/pypi.yml@main
    with:
      # Directory for running the workflow
      working_directory: "."

      # Environment to run the workflow in
      environment: pypi

      # Python version to run the workflow with
      python_version: "3.12"

    secrets:
      # Token to use for PyPI
      PYPI_API_TOKEN: ${{ secrets.PYPI_API_TOKEN }}
```
