
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64  && chmod +x minikube

sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
 
systemctl stop firewald
systemctl disable firewald
yum install -y iptables-services
systemctl enable iptables.service
systemctl start iptables.service
yum install -y system-config-firewall-tui.noarch
system-config-firewall-tui

sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

sudo /usr/local/bin/minikube start --vm-driver=none
sudo /usr/local/bin/minikube config set vm-driver none
