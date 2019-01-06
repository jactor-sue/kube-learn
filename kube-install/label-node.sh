kubectl label node $(kubectl get nodes |grep none | awk '{print $1}') node-role.kubernetes.io/node=node
kubectl get nodes
