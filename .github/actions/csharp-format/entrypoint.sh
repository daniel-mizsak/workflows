#!/bin/bash -l
set -o pipefail

export PATH="${PATH}:/root/.dotnet/tools"

LOGFILE_PATH=$(mktemp /tmp/csharpier.XXXXXX)
cd "${INPUT_WORKING_DIRECTORY:-.}" || exit
dotnet-csharpier --check . 2>&1 | tee -a "$LOGFILE_PATH"
exitcode=$?

echo 'logs<<EOF' >> "$GITHUB_OUTPUT"
cat "$LOGFILE_PATH" >> "$GITHUB_OUTPUT"
echo 'EOF' >> "$GITHUB_OUTPUT"

if [[ $exitcode -eq 0 ]]; then
    echo "✅ CSharpier formatting passed successfully." >> "$GITHUB_STEP_SUMMARY"
else
    echo "❌ CSharpier formatting failed." >> "$GITHUB_STEP_SUMMARY"
fi

exit $exitcode
