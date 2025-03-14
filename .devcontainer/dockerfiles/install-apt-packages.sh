#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update && \
apt-get -y install \
postgresql \
default-jdk \
openvpn3 \
tailscale \
google-cloud-cli \
gh \
jq \
xdg-utils

# Auth0 CLI
curl -sSfL https://raw.githubusercontent.com/auth0/auth0-cli/main/install.sh | sh -s -- -b . && mv ./auth0 /usr/local/bin/

# ArgoCD CLI
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64;
install -m 555 argocd-linux-amd64 /usr/local/bin/argocd;
rm argocd-linux-amd64;

