## ANSIBLE

Ansible CI/CD.

[Example usage](#)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/molecule.yml@main
    with:
      # Directory for running the workflow
      working_directory: "./ansible"

      # Yamllint configuration file, relative to the working directory
      yamllint-config: ".yamllint"

      # Ansible-lint configuration file, relative to the working directory
      ansible-lint-config: ".ansible-lint"

    secrets:
      # Password used for ansible vault encryption
      VAULT_PASSWORD: ${{ secrets.VAULT_PASSWORD }}
```
