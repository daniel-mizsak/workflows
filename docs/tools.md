# Tools

## Dependabot

[Dependabot](https://github.com/dependabot) is used to keep dependencies (like GitHub Actions, Python packages) up to date.\
It is configured in the `.github/dependabot.yml` file.

## Just

[Just](https://github.com/casey/just) is a command runner that helps with invoking commands in a consistent and more concise way.\
It is configured in the `justfile` file.\

## Megalinter

[Megalinter](https://github.com/oxsecurity/megalinter) is used to ensure code quality and consistency.\
It is configured in the `.github/linters/.megalinter.yml` file.

## Pre-Commit

[Pre-Commit](https://pre-commit.com/) is used to run certain checks on the code before it is committed.\
These checks are defined in the `.pre-commit-config.yaml` file.
