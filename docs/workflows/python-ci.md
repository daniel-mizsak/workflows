# PYTHON-CI

Python CI

```yaml
uses: daniel-mizsak/workflows/.github/workflows/python-ci.yml@v1
with:
  # Directory for running the workflow
  working-directory: "."

  # Python version installed by uv
  python-version: "3.12"

  # Whether to upload .artifacts/htmlcov to github
  # Path is relative to working-directory
  coverage: true

  # Whether to upload .artifacts/coverage.xml to codecov
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
