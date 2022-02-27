#! /bin/sh -e

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

echo "Expect 'jsonnet \"$SCRIPT_DIR/main.jsonnet\"' to fail"
# Expect failure; Invert error code
! jsonnet "$SCRIPT_DIR/main.jsonnet"
