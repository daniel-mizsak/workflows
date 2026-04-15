# LINT

Lint using [megalinter](https://megalinter.io/latest/)

```yaml
permissions: {}

jobs:
  lint:
    permissions:
      contents: read
      pull-requests: write
    uses: daniel-mizsak/workflows/.github/workflows/lint.yml@v2
    with:
      # Path to megalinter config file
      megalinter-config: "./.github/linters/.megalinter.yml"
```
