#!/bin/bash -l
set -o pipefail
options=()

if [[ -n "$INPUT_CONFIG_FILE" ]]; then
  options+=(--config-file "$INPUT_CONFIG_FILE")
fi

if [[ "$INPUT_STRICT" = "true" ]]; then
  options+=(--strict)
fi

if [[ "$INPUT_STRICT" = "true" ]]; then
  options+=(--no-warnings)
fi

LOGFILE_PATH=$(mktemp)
yamllint "${options[@]}" ${INPUT_FILE_OR_DIR:-.} | tee -a "$LOGFILE_PATH"
exitcode=$?

echo "logfile_path=$(realpath ${LOGFILE_PATH})" >> $GITHUB_OUTPUT
exit $exitcode
