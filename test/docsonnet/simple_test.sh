#! /bin/sh -e

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

TMP_DIR="`mktemp -d`"
docsonnet "$SCRIPT_DIR/main.jsonnet" -o "$TMP_DIR"
[ -f "$TMP_DIR/README.md" ] && echo "Success! Found file '$TMP_DIR/README.md'"
