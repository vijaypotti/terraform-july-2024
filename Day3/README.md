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

