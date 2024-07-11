![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/9423fd10-5c08-4db4-902f-02f43d4ef112)# Day 3

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


## Lab - Creating a windows virtual machine in azure using Terraform
```
cd ~/terraform-july-2024
git pull
cd Day3/create-windows-vm-in-azure

cat providers.tf
cat main.tf

terraform init
terraform validate
terraform apply --auto-approve
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/5d6a327e-1750-448f-9b4b-1d6c5955b01b)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/faa4b938-fa6c-4e64-b099-974d778c8745)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/06a0552d-6008-410e-bb1e-dcc1e66f658e)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/c0e4d361-ad15-4a96-864e-35f62a434aa7)

Connecting to Windows VM via Remina using RDP
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/3e4f8031-26a5-4479-a5de-022759135cbd)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/32b1db17-47aa-4312-848c-8355f4ec4166)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/207f1247-3324-46c8-b989-ce2ba36c574e)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/0e50ef85-cc0c-4c1d-b429-f664157ab3a5)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/98f8e312-e40a-4491-89ed-c15b50d6387f)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/a1c55711-0104-4d57-90f1-399fa36e9001)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/3004487b-f9a4-499a-a753-202eb55ce351)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/f6c751d0-172e-4099-b5a4-6a31446cc9a4)


## Lab - Find out all azure machine sizes(configuration) area available for a specific location
```
az vm list-vm-resize-options -g tektutor-resource-group -n my-windows-vm
```

## Lab - Incase you lost the terraform.tfstate and terraform.tfstate.back file
```
terraform import azurerm_resource_group.tektutor_resource_group \
/subscriptions/82dfc44c-fa64-4e95-a9a9-2777d9258514/resourceGroups/tektutor-resource-group
```
Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/baa67562-8ace-47e6-bcba-9d370342037e)


## Lab - Provisiong 3 virtual machines within same region one vm per availability zone using Virtual Machine Scale Set
```
cd ~/terraform-july-2024
git pull
cd Day3/virtual-machine-scale-sets

cat variables.tf
cat providers.tf
cat main.tf

terraform init
terraform approve --auto-approve
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/ef26cbcc-5537-4b7e-8fdb-7425098dbfab)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/dffd5095-b5e0-4601-9ae1-7833ef1e26ce)

## Lab - Creating 3 VMs in Azure and put them behind Azure loadbalancer using Terraform
```
cd ~/terraform-july-2024
git pull
cd Day3/loadbalancer
terraform init
terraform validate
terraform apply --auto-approve
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/9238f4d2-6f99-4a81-aead-9d4c698f4143)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/f53e0366-a315-450b-88a9-8c9aaa1404fd)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/029ba437-368d-4fae-b02c-0bf186cabe6d)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/aed49ea5-9d55-4493-956a-d4cfb878daea)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/9ac796fd-c4e7-4a2a-bb10-209e80ad0a72)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/95af583b-72ef-4852-97b3-98ebb92b43ed)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/77708153-35fb-4214-9bc4-68e45240f0ef)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/8b312580-eacf-4d27-a890-a8b05f789ffb)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/0dbc7e51-0c33-42de-b879-a2319aae4854)
