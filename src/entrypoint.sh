#! /bin/sh

echo "import '/runner/vendor/k8s-libsonnet/${K8S_VERSION:-1.21}/main.libsonnet'" > /runner/lib/k.libsonnet

export JSONNET_PATH="/runner/lib:/runner/vendor/docsonnet"

exec "$@"
