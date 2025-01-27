#!/bin/bash -l
set -o pipefail

LOGFILE_PATH=$(mktemp /tmp/molecule.XXXXXX)
molecule test 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> "$GITHUB_OUTPUT"
cat "$LOGFILE_PATH" >> "$GITHUB_OUTPUT"
echo 'EOF' >> "$GITHUB_OUTPUT"

exit $exitcode
