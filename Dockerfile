FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

LABEL UBI_VERSION="8"
LABEL MAINTAINER="abramovx@gmail.com"
LABEL RELEASE_VERSION="1.0.0"

RUN microdnf update && \
    microdnf install --nodocs java-1.8.0-openjdk-headless && \
    microdnf clean all