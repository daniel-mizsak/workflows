#!/bin/bash -l
set -o pipefail

if [[ -n "$INPUT_CONFIG_FILE" ]]; then
    options+=(--config-file "$INPUT_CONFIG_FILE")
fi

if [[ "$INPUT_STRICT" = "true" ]]; then
    options+=(--strict)
fi

LOGFILE_PATH=$(mktemp /tmp/yamllint.XXXXXX)
cd "${INPUT_WORKING_DIRECTORY:-.}" || exit 1
yamllint "${options[@]}" --format github . 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> "$GITHUB_OUTPUT"
cat "$LOGFILE_PATH" >> "$GITHUB_OUTPUT"
echo 'EOF' >> "$GITHUB_OUTPUT"

if [[ $exitcode -eq 0 ]]; then
    echo "✅ YAML linting passed successfully." >> "$GITHUB_STEP_SUMMARY"
else
    echo "❌ YAML linting failed." >> "$GITHUB_STEP_SUMMARY"
fi

exit $exitcode
