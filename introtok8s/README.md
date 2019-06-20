# Introduction To K8s Demo

This is the instructions for running the demo that I used for the "Hands on Introduction to kubernetes talk"

## Create a local cluster using Minikube

### Installing Minikube

Instructions are [here](https://kubernetes.io/docs/tasks/tools/install-minikube/)

### Starting a one node local cluster using Minikube

```bash
minikube start --memory 8192 --cpus 4
```

## Deploying the sock-shop

```bash
git clone https://github.com/microservices-demo/microservices-demo
```

```bash
kubectl create -f microservices-demo/deploy/kubernetes/manifests/sock-shop-ns.yaml -f microservices-demo/deploy/kubernetes/manifests
```

### Checkout the dashboard

```bash
minikube dashboard
```

### Expose the sock-shop 

```bash
minikube service front-end -n sock-shop
```
