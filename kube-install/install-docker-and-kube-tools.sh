sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg
EOF

setenforce 0

sudo yum makecache fast

sudo yum install -y kubelet-1.13.1-0 kubeadm-1.13.1-0 kubectl-1.13.1-0 docker-ce-18.06.1.ce-3.el7
sudo systemctl enable kubelet 
sudo systemctl enable docker
sudo systemctl start kubelet
sudo systemctl start docker
