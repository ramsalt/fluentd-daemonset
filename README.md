# fluentd-daemonset

Custom fluentd container image with Ramsalt wodby plugin, for use in standard K8S clusters

## Upgrading

To upgrade the underlying version of fluentd, edit `Dockerfile` and push a corresponding git tag to GitHub:

```
ARG FLUENTD_VERSION=v1.16.3
FROM fluent/fluentd-kubernetes-daemonset:${FLUENTD_VERSION}-debian-opensearch-1.0
```

```
git commit -m "Upgrade fluentd to 1.16.3" Dockerfile
git tag -m "Upgrade fluentd to 1.16.3" v1.16.3-0
git push && git push --tags

```
