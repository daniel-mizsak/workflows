## ANSIBLE

Ansible CI/CD.

[Example usage](#)

```yaml
    uses: daniel-mizsak/workflows/.github/workflows/ansible.yml@main
    with:
      # Directory for running the workflow
      working_directory: "ansible"

      # Yamllint configuration file, relative to the working directory
      yaml_lint_config_file: ".yamllint"

      # Ansible-lint configuration file, relative to the working directory
      ansible_lint_config_file: ".ansible-lint"

    secrets:
      # Password used for ansible vault encryption
      VAULT_PASSWORD: ${{ secrets.VAULT_PASSWORD }}
```
