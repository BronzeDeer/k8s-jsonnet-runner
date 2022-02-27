#! /bin/sh -e

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

TMP_DIR="`mktemp -d`"

cd "$TMP_DIR";
jb init;
jb install https://github.com/BronzeDeer/k8s-jsonnet-runner/test@v0.0.1;
[ -f vendor/github.com/BronzeDeer/k8s-jsonnet-runner/test/jsonnet/main.jsonnet ]
echo "Success!"
