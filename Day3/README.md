# Day 3

## Info - Kubernetes Overview
<pre>
- it is a container orchestration platform
- it support in-built monitoring features, load-balancing, scale up/down
- it supports rolling update
  - deployment strategy
    - blue-green
    - canary
- it self-healing
- supports exposing your applicaiton to internal consumers/applications only
- supports exposing your application to external world
</pre>

## Lab - Creating an Azure Kubernetes Service using Terraform
```
cd ~/terraform-july-2024
git pull
cd Day3/provision-aks-cluster
cat providers.tf
cat output.tf
cat main.tf
terraform init
terraform validate
terraform apply --auto-approve
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/f42b47dc-8f47-45a6-b9f6-c95abab39a81)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/45a7ce99-60e9-4cfc-8d03-f2e51ff6ff57)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/f72e552b-5e5c-409f-b83b-33c606441ea8)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/5a9985a4-4a31-4879-878a-88cf1c35d04e)

Installing the kubectl client tool
```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
```

You need to save the kubeconfig in your home directory
```
mkdir -p /home/rps/.kube
terraform output kube_config
```
You need to save the displayed kube_config output to a file name config under /home/rps/.kube/config.

Make sure you have deleted that "<<EOT" and "EOT" lines

Post installation you can check
```
kubectl get nodes
```
Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/dccbffcf-8f99-4799-ab59-3e72683d6d9c)


## Lab - Deploying nginx web server into Kubernetes cluster
Replace 'jegan' with your name in the command below
```
kubectl create namespace jegan
kubectl get namespaces | grep jegan
```

Deploy nginx
```
kubectl create deployment nginx --image=nginx:latest --replicas=3 -n jegan
kubectl get pods -n jegan
```

Create a service for the nginx deployment
```
kubectl expose deploy/nginx --type=LoadBalancer --port=80 -n jegan
kubectl get service -n jegan
kubectl describe service/nginx -n jegan
```
Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/e22e4cdf-b118-4243-8aac-d60142b692f2)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/7f260b84-1b20-484b-b1e8-d4fe0bae2138)

Make sure to destroy the kubernetes cluster, once you are done with this exercise
```
terraform destroy --auto-approve
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/561d4d34-c863-45c7-8a0d-7b99084f4e0e)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/d09d6e86-99c5-4bad-877d-11730d8c49c5)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/444d0f22-8588-4388-831a-c8919b222125)

