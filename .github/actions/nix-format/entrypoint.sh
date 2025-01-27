#!/usr/bin/env bash
set -o pipefail

LOGFILE_PATH=$(mktemp /tmp/alejandra.XXXXXX)
cd "${INPUT_WORKING_DIRECTORY:-.}"
alejandra --check . 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> "$GITHUB_OUTPUT"
cat "$LOGFILE_PATH" >> "$GITHUB_OUTPUT"
echo 'EOF' >> "$GITHUB_OUTPUT"

if [[ $exitcode -eq 0 ]]; then
    echo "✅ Nix formatting passed successfully." >> "$GITHUB_STEP_SUMMARY"
else
    echo "❌ Nix formatting failed." >> "$GITHUB_STEP_SUMMARY"
fi

exit $exitcode
