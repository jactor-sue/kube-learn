kubectl create sa management-admin -n kube-system 2>/dev/null
kubectl create clusterrolebinding management-admin --clusterrole=cluster-admin --serviceaccount=kube-system:management-admin 2>/dev/null
key=$(kubectl get sa management-admin -o=custom-columns=:.secrets[0].name -n kube-system | grep 'management')
token=$(kubectl -n kube-system get secret ${key} -o yaml | grep token: | awk '{print $2}' | base64 -d)
echo $token | tee token.txt

