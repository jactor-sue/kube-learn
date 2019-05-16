# Kubernetes installation

## 1. Install docker and kube tools

```sh
bash ./install-docker-and-kube-tools.sh
```

## 2. Install kubernetes with Aliyun images

```sh
bash ./setup-kube-master.sh
```

## Reinstall kubernetes

```sh
kubeadm reset -f
bash ./setup-kube-master.sh
```

## Clean up all

```sh
sudo bash uninstall-all.sh
```