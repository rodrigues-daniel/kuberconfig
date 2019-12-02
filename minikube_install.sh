
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-1.5.2.rpm  && sudo rpm -ivh minikube-1.5.2.rpm
 
systemctl stop firewald
systemctl disable firewald
yum install -y iptables-services
systemctl enable iptables.service
systemctl start iptables.service
yum install -y system-config-firewall-tui.noarch
system-config-firewall-tui

sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

sudo minikube start --vm-driver=none
sudo minikube config set vm-driver none
