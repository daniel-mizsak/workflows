#!/root/.nix-profile/bin/bash -l
set -o pipefail

nix-env -iA nixpkgs.alejandra

LOGFILE_PATH=$(mktemp)
alejandra ${INPUT_FILE_OR_DIR:-.} --check 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> $GITHUB_OUTPUT
cat $LOGFILE_PATH >> $GITHUB_OUTPUT
echo 'EOF' >> $GITHUB_OUTPUT

exit $exitcode
