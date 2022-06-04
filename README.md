* Introduction

This repo contains a workaround for <https://github.com/k3s-io/klipper-lb/issues/34> , suggested by @westrickc

* Usage

```sh
crictl pull ghcr.io/akanouras/klipper-lb-nft:v0.3.5
ctr --namespace=k8s.io image tag --force ghcr.io/akanouras/klipper-lb-nft:v0.3.5 docker.io/rancher/klipper-lb:v0.3.5
```

Wait a few seconds/minutes, and `kubectl get pod -A` should show svclb-traefik-xxxxx as `Running` instead of `CrashLoopBackOff`.

