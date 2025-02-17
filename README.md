## <div align="center">📑 workflows</div>

<div align="center">
<a href="ttps://img.shields.io/github/license/daniel-mizsak/workflows" target="_blank"><img src="https://img.shields.io/github/license/daniel-mizsak/workflows" alt="license"></a>
</div>


## Overview
Reusable GitHub actions and workflows.


## Getting started
Actions

| Documentation | Content |
|:--------------|:--------|
| <a href="https://github.com/daniel-mizsak/workflows/blob/main/docs/actions/csharp-format.md" target="_blank">csharp-format documentation</a> | <a href="https://github.com/daniel-mizsak/workflows/blob/main/.github/actions/csharp-format/action.yml" target="_blank">csharp-format content</a> |
| <a href="https://github.com/daniel-mizsak/workflows/blob/main/docs/actions/molecule.md" target="_blank">molecule documentation</a> | <a href="https://github.com/daniel-mizsak/workflows/blob/main/.github/actions/molecule/action.yml" target="_blank">molecule content</a> |
| <a href="https://github.com/daniel-mizsak/workflows/blob/main/docs/actions/nix-format.md" target="_blank">nix-format documentation</a> | <a href="https://github.com/daniel-mizsak/workflows/blob/main/.github/actions/nix-format/action.yml" target="_blank">nix-format content</a> |
| <a href="https://github.com/daniel-mizsak/workflows/blob/main/docs/actions/yaml-lint.md" target="_blank">yaml-lint documentation</a> | <a href="https://github.com/daniel-mizsak/workflows/blob/main/.github/actions/yaml-lint/action.yml" target="_blank">yaml-lint content</a> |

<br><br>
Workflows

| Documentation | Content |
|:--------------|:--------|
| <a href="https://github.com/daniel-mizsak/workflows/blob/main/docs/workflows/tox.md" target="_blank">tox documentation</a> | <a href="https://github.com/daniel-mizsak/workflows/blob/main/.github/workflows/tox.yml" target="_blank">tox content</a> |


## Notes
When [creating a new action](https://docs.github.com/en/actions/sharing-automations/creating-actions/creating-a-docker-container-action#writing-the-action-code), make sure that `entrypoint.sh` is executable:
```bash
git add entrypoint.sh
git update-index --chmod=+x entrypoint.sh
```
