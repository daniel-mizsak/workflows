## GH-PAGES

[Example usage](https://github.com/daniel-mizsak/python-package-template/blob/main/.github/workflows/release.yml)

```yaml
- uses: daniel-mizsak/workflows/.github/workflows/gh-pages.yml@main
    with:
      # The working directory to run the workflow in.
      working-directory: "."

      # The python version to run the workflow with.
      python-version: "3.12"
```

The workflow only supports documentation building with `spinx`.
