#!/root/.nix-profile/bin/bash -l
set -o pipefail

LOGFILE_PATH=$(mktemp)
cd "${INPUT_WORKING_DIRECTORY:-.}"
alejandra --check 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> $GITHUB_OUTPUT
cat $LOGFILE_PATH >> $GITHUB_OUTPUT
echo 'EOF' >> $GITHUB_OUTPUT

exit $exitcode
