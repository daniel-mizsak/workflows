# LINT CUPCAKE

Lint using the [MegaLinter cupcake flavor](https://megalinter.io/latest/flavors/cupcake/).

```yaml
permissions: {}

jobs:
  lint:
    permissions:
      contents: read
      pull-requests: write
    uses: daniel-mizsak/workflows/.github/workflows/lint-cupcake.yml@v3
    with:
      # Path to MegaLinter config file
      megalinter-config: "./.github/linters/.megalinter.yml"
```
