# K8S-jsonnet-runner

A container aimed at easing ci workflows in the kubernetes jsonnet ecosystem. It includes commonly used tools and automatically sets up dependencies for a targeted kubernetes version

## Environment Variables

- `K8S_VERSION`: targeted kubernetes/k8s-libsonnet version, defaults to 1.21 if unset
- `NO_DOCSONNET`: if set, will not put doc-util on the jpath

## Included tools

- `go-jsonnet@v0.18.0`: Provides `jsonnet`, `jsonnetfmt`, and `jsonnet-lint`, the main tools
- `jsonnet-bundler@v0.4.0`: Provides `jb`, a jsonnet package manager
- `docsonnet@v0.0.3`: Provides `docsonnet`, a jsonnet documentation generator

## Dependencies

- `jsonnet-libs/k8s-libsonnet@f8efa81`: Includes variants for kubernetes versions 1.18-1.23. Use environment variable `K8S_VERSION` to select a variant (default 1.21). The selected variant will be put on the jpath as `k.libsonnet` to be used directly or indirectly via a library like [kausal.libsonnet](https://github.com/grafana/jsonnet-libs/tree/master/ksonnet-util)
- `docsonnet/doc-util@v0.0.3`: Allows evaluating docsonnet document keys outside of the docsonnet executable
