# k8s-infrastructure
Bootstrap k8s dashboard setup

## schedule on master node

```text
kubectl taint nodes --all node-role.kubernetes.io/master-
```

## install helm

```text
VERSION="2.10.0"
wget https://storage.googleapis.com/kubernetes-helm/helm-v${VERSION}-linux-amd64.tar.gz
tar -xf helm-v${VERSION}-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/
sudo chown root:root /usr/local/bin/helm
sudo chmod +x /usr/local/bin/helm
rm -fr linux-amd64/ helm-v${VERSION}-linux-amd64.tar.gz
helm init
```

## tiller permissions

```text
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
```

## bootstrap dashboard / monitoring

```text
k8s/bootstrap.sh
```

## metric service autodiscovery

```yaml
...
service:
  annotations:
    prometheus.io/scrape: "true"
...
```
