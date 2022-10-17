#!/usr/bin/env bash

docker pull fission/fetcher
docker pull fission/fission-bundle
docker pull fission/builder
kubernetes-kubeadm-2nodes

snap install helm --classic

export FISSION_NAMESPACE="fission"
kubectl create namespace $FISSION_NAMESPACE
kubectl create -k "github.com/fission/fission/crds/v1?ref=v1.17.0"
helm repo add fission-charts https://fission.github.io/fission-charts/
helm repo update
helm install --version v1.17.0 --namespace $FISSION_NAMESPACE fission \
  --set serviceType=NodePort,routerServiceType=NodePort \
  fission-charts/fission-all

