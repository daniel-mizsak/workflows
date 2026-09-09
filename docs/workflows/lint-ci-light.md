# LINT CI LIGHT

Lint using the [MegaLinter ci_light flavor](https://megalinter.io/latest/flavors/ci_light/).

```yaml
permissions: {}

jobs:
  lint:
    permissions:
      contents: read
      pull-requests: write
    uses: daniel-mizsak/workflows/.github/workflows/lint-ci-light.yml@v3
    with:
      # Path to MegaLinter config file
      megalinter-config: "./.github/linters/.megalinter.yml"
```
