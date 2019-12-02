
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-1.5.2.rpm  && sudo rpm -ivh minikube-1.5.2.rpm
 
sudo minikube start --vm-driver=none
sudo minikube config set vm-driver none
