#! /bin/sh -e

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

jsonnet "$SCRIPT_DIR/main.jsonnet" | diff - "$SCRIPT_DIR/expected.json"
