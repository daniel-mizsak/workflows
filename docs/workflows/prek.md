# PREK

Run pre-commit using [prek](https://prek.j178.dev/)

```yaml
permissions: {}

jobs:
  prek:
    permissions:
      contents: read
    uses: daniel-mizsak/workflows/.github/workflows/prek.yml@v2
    with:
      # Additional arguments passed to prek
      extra-args: "--all-files"

      # Comma-separated list of hooks or projects to skip
      skip: "shellcheck, alejandra-system"
```
