#!/bin/bash -l
set -o pipefail

if [[ -n "$INPUT_CONFIG_FILE" ]]; then
  options+=(--config-file "$INPUT_CONFIG_FILE")
fi

if [[ "$INPUT_STRICT" = "true" ]]; then
  options+=(--strict)
fi

LOGFILE_PATH=$(mktemp)
ansible-lint "${options[@]}" "$INPUT_PATH" 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> $GITHUB_OUTPUT
cat $LOGFILE_PATH >> $GITHUB_OUTPUT
echo 'EOF' >> $GITHUB_OUTPUT

exit $exitcode
