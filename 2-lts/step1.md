let's first create a fission namespace

```
kubectl create namespace fission
```{{execute}}

```
kubectl create -k "github.com/fission/fission/crds/v1?ref=v1.17.0"
```{{execute}}

```
export FISSION_NAMESPACE="fission"
```{{execute}}

```
kubectl create namespace $FISSION_NAMESPACE
```{{execute}}

```
kubectl config set-context --current --namespace=$FISSION_NAMESPACE
```{{execute}}

```
kubectl apply -f https://github.com/fission/fission/releases/download/v1.17.0/fission-all-v1.17.0-minikube.yaml
```{{execute}}

# Let's install fission Cli

```
curl -Lo fission https://github.com/fission/fission/releases/download/v1.17.0/fission-v1.17.0-linux-amd64 \
    && chmod +x fission && sudo mv fission /usr/local/bin/
```{{execute}}