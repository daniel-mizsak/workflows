## GH-PAGES

Deploy documentation to GitHub Pages.

[Example usage](https://github.com/daniel-mizsak/python-package-template/blob/main/.github/workflows/release.yml)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/gh-pages.yml@main
    with:
      # Directory for running the workflow
      working_directory: "."

      # Python version to run the workflow with.
      python_version: "3.12"
```

- Documentation dependencies must be installable via `pip install [docs]`
- The workflow only supports documentation building with `spinx`
