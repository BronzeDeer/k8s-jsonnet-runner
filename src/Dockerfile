FROM golang:1.17-alpine as builder

COPY go-jsonnet /go-jsonnet
WORKDIR /go-jsonnet

RUN go install ./cmd/jsonnet
RUN go install ./cmd/jsonnetfmt
RUN go install ./cmd/jsonnet-lint

COPY jsonnet-bundler /jsonnet-bundler
WORKDIR /jsonnet-bundler
RUN go install ./cmd/jb

COPY docsonnet /docsonnet
WORKDIR /docsonnet
RUN go install .

FROM alpine/git:v2.32.0

COPY --from=builder /go/bin/* /usr/local/bin/

RUN mkdir -p /runner/lib

COPY k8s-libsonnet/1.18 /runner/vendor/k8s-libsonnet/1.18
COPY k8s-libsonnet/1.19 /runner/vendor/k8s-libsonnet/1.19
COPY k8s-libsonnet/1.20 /runner/vendor/k8s-libsonnet/1.20
COPY k8s-libsonnet/1.21 /runner/vendor/k8s-libsonnet/1.21
COPY k8s-libsonnet/1.22 /runner/vendor/k8s-libsonnet/1.22
COPY k8s-libsonnet/1.23 /runner/vendor/k8s-libsonnet/1.23

COPY docsonnet /runner/vendor/docsonnet

COPY entrypoint.sh /runner/

ENTRYPOINT [ "/runner/entrypoint.sh" ]

RUN chmod 777 -R /runner
