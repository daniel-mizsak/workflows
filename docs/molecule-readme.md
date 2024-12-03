## MOLECULE

[Example usage](https://github.com/daniel-mizsak/macos-setup/blob/main/.github/workflows/ci.yml)

```yaml
- uses: daniel-mizsak/workflows/.github/workflows/molecule.yml@main
    with:
      # The working directory to run the workflow in.
      working-directory: "./ansible"

      # Whether to run molecule.
      molecule: true

      # Whether to run yamllint.
      yamllint: true

      # The yamllint configuration file to use. Relative to the working directory.
      yamllint-config: ".yamllint"

      # Whether to run ansible-lint.
      ansible-lint: true

      # The ansible-lint configuration file to use. Relative to the working directory.
      ansible-lint-config: ".ansible-lint"

    secrets:
      # The password used for ansible vault encryption.
      VAULT_PASSWORD: ${{ secrets.VAULT_PASSWORD }}

```
