#! /bin/sh

echo "import '/runner/vendor/k8s-libsonnet/${K8S_VERSION:-1.21}/main.libsonnet'" > /runner/lib/k.libsonnet

export JSONNET_PATH="${JSONNET_PATH+${JSONNET_PATH}:}/runner/lib"

if [ -z "${NO_DOCSONNET+X}" ]; then
  export JSONNET_PATH="${JSONNET_PATH}:/runner/vendor/docsonnet"
fi

exec "$@"
