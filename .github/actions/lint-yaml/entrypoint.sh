#!/bin/bash -l
set -o pipefail

if [[ -n "$INPUT_CONFIG_FILE" ]]; then
  options+=(--config-file "$INPUT_CONFIG_FILE")
fi

if [[ "$INPUT_STRICT" = "true" ]]; then
  options+=(--strict)
fi

if [[ "$INPUT_STRICT" = "true" ]]; then
  options+=(--no-warnings)
fi

yamllint "${options[@]}" ${INPUT_FILE_OR_DIR:-.}
exitcode=$?
exit $exitcode
