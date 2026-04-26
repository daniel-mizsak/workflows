#!/usr/bin/env nix-shell
#!nix-shell -i bash --packages alejandra
# shellcheck shell=bash
set -o pipefail

LOGFILE_PATH=$(mktemp /tmp/alejandra.XXXXXX)
cd "${INPUT_WORKING_DIRECTORY:-.}" || exit 1
alejandra --check . 2>&1 | tee -a "${LOGFILE_PATH}"
exitcode=$?

# GitHub output stops at a standalone delimiter line. Generate delimiter that is not present in the logs.
DELIMITER="EOF"
while grep --fixed-strings --line-regexp --quiet "${DELIMITER}" "${LOGFILE_PATH}"; do
    DELIMITER="alejandra_logs_$(date +%s%N)_${RANDOM}"
done

{
    echo "logs<<${DELIMITER}"
    cat "${LOGFILE_PATH}"
    echo "${DELIMITER}"
} >> "${GITHUB_OUTPUT}"

if [[ $exitcode -eq 0 ]]; then
    echo "✅ Nix Format passed successfully." >> "${GITHUB_STEP_SUMMARY}"
else
    echo "❌ Nix Format failed." >> "${GITHUB_STEP_SUMMARY}"
fi

exit $exitcode
