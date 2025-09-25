@_:
    just --list --unsorted

[group("lifecycle")]
clean:
    find . -name ".DS_Store" -type f -delete

[group("qa")]
pre-commit:
    pre-commit run --all-files
