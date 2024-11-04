ARG FLUENTD_VERSION=v1.17.1
FROM fluent/fluentd-kubernetes-daemonset:${FLUENTD_VERSION}-debian-opensearch-amd64-1.2

USER root

RUN fluent-gem install fluent-plugin-wodby --version=">=0.1.8" && \
    gem sources --clear-all

USER fluent
