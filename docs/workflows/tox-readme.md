## TOX

[Example usage](https://github.com/daniel-mizsak/python-package-template/blob/main/.github/workflows/ci.yml)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/tox.yml@main
    with:
      # The working directory to run the workflow in.
      working-directory: "."

      # The list of python versions to run the workflow with.
      python-versions: "['3.11', '3.12']"

      # Whether to run codecov after tests.
      codecov: true

    secrets:
      # The token to use for codecov.
      CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN }}
```

Codecov is only computed for the latest python version in the `python-versions` list.
