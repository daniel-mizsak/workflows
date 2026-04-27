# PYTHON-CI

Python CI using [uv](https://docs.astral.sh/uv/) and [just](https://just.systems/)

```yaml
permissions: {}

jobs:
  python-ci:
    permissions:
      contents: read
      id-token: write
    uses: daniel-mizsak/workflows/.github/workflows/python-ci.yml@v2
    with:
      # Directory for running the workflow
      working-directory: "."

      # Override version specified in pyproject.toml
      # Recommended to be used with GitHub releases
      package-version: ${{ github.event.release.tag_name }} # "release.tag_name" is only available for "release" events.

      # Python version installed by uv
      python-version: "3.12"

      # Whether to upload .artifacts/htmlcov to github
      # Paths are relative to working-directory
      coverage: false

      # Whether to upload .artifacts/coverage.xml to github and codecov
      # Path is relative to working-directory
      codecov: false

      # Whether to upload .artifacts/site to github
      # Path is relative to working-directory
      documentation: false

      # Whether to upload .artifacts/dist to github
      # Path is relative to working-directory
      package: false
```

If the python project should be tested against multiple python versions, use `nox` with `uv`. See [noxfile.py](https://github.com/daniel-mizsak/pyholdsport/blob/bdf2d41b67da37da21c989879a416fb6af94b88b/noxfile.py).
