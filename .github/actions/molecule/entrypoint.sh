#!/bin/bash -l
set -o pipefail

LOGFILE_PATH=$(mktemp /tmp/molecule.XXXXXX)
cd "${INPUT_WORKING_DIRECTORY:-.}" || exit 1
export ANSIBLE_FORCE_COLOR=1
ANSIBLE_VAULT_PASSWORD_FILE=$(pwd)/"$ANSIBLE_VAULT_PASSWORD_FILE"
export ANSIBLE_VAULT_PASSWORD_FILE=$ANSIBLE_VAULT_PASSWORD_FILE
molecule test 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> "$GITHUB_OUTPUT"
cat "$LOGFILE_PATH" >> "$GITHUB_OUTPUT"
echo 'EOF' >> "$GITHUB_OUTPUT"

if [[ $exitcode -eq 0 ]]; then
    echo "✅ Molecule passed successfully." >> "$GITHUB_STEP_SUMMARY"
else
    echo "❌ Molecule failed." >> "$GITHUB_STEP_SUMMARY"
fi

exit $exitcode
