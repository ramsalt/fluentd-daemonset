ARG FLUENTD_VERSION=v1.16.3
FROM fluent/fluentd-kubernetes-daemonset:${FLUENTD_VERSION}-debian-opensearch-1.0

USER root

RUN fluent-gem install fluent-plugin-wodby --version=">=0.1.8" && \
    gem sources --clear-all

USER fluent
