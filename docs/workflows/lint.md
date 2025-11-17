# LINT

Lint using megalinter

```yaml
jobs:
  lint:
    permissions:
      pull-requests: write
    uses: daniel-mizsak/workflows/.github/workflows/lint.yml@v1
    with:
      # Path to megalinter config file
      megalinter-config: "./.github/linters/.megalinter.yml"
```
