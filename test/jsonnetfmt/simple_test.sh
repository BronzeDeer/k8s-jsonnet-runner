#! /bin/sh -e

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

echo "Expect 'jsonnetfmt --test \"$SCRIPT_DIR/main.jsonnet\"' to fail"
# Invert error code
! jsonnetfmt --test "$SCRIPT_DIR/main.jsonnet"
