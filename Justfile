@_:
    just --list --unsorted

[group("lifecycle")]
clean:
    rm -rf \
        megalinter-reports
    find . -name ".DS_Store" -type f -delete

[group("qa-extra")]
megalinter:
    npx mega-linter-runner --flavor cupcake --env "MEGALINTER_CONFIG=.github/linters/.megalinter.yml"

[group("qa-extra")]
prek:
    prek run --all-files
