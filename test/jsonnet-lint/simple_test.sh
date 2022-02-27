#! /bin/sh

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

echo "Expect 'jsonnet-lint \"$SCRIPT_DIR/main.jsonnet\"' to fail with exit code 2"
jsonnet-lint "$SCRIPT_DIR/main.jsonnet"
# exit code 2 implies actual linting errors, 1 implies error pre linting
test $? -eq 2 && echo "Test passed!"
