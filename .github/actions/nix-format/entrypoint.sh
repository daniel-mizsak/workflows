#!/usr/bin/env nix-shell
#!nix-shell -i bash --packages alejandra
# shellcheck shell=bash
set -o pipefail

LOGFILE_PATH=$(mktemp /tmp/alejandra.XXXXXX)
cd "${INPUT_WORKING_DIRECTORY:-.}" || exit 1
alejandra --check . 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> "$GITHUB_OUTPUT"
cat "$LOGFILE_PATH" >> "$GITHUB_OUTPUT"
echo 'EOF' >> "$GITHUB_OUTPUT"

if [[ $exitcode -eq 0 ]]; then
    echo "✅ Nix Format passed successfully." >> "$GITHUB_STEP_SUMMARY"
else
    echo "❌ Nix Format failed." >> "$GITHUB_STEP_SUMMARY"
fi

exit $exitcode
