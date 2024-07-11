# Day 4

## Info - App Service Overview
<pre>
- App Service is Microsoft's Platform as a Service (PaaS) offering 
- can be used to host web applications, REST API's, backend services for mobile apps
- Supports all popular programming languages and frameworks
- PowerShell, scripts or executables can run as background services
- web applications and services developed using 
  - .Net
  - Java
  - NodeJS
  - Ruby
  - Python
  - PHP
- Your organization can focus on application development
- App Service can scale up/down resources manually/automatically based on metrics
- Supports Containerized applications 
</pre>

## Info - App Service Plan Overview
<pre>
- We need an App Service Plan in order to create App Service
- App Service Plan defines the compute resources required for your application to run  
</pre>

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
