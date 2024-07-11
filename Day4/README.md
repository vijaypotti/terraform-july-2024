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

## Lab - Fix the errors in Day4/lb-with-virtual-machine-scale-set
```
cd ~/terraform-july-2024
git pull
cd Day4/lb-with-virtual-machine-scale-set
terraform init
terraform validate
```

Fix the below errors
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/c2917926-d255-49a9-a130-343e3af96b65)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/a403bfab-c711-4561-815d-a2ca31ba9dea)

## Lab - Deploying Wordpress App service from Azure Marketplace

![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/b7764636-9939-4ed3-a491-3569af864051)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/1f41d421-59bd-4b82-bf5f-16746fe83f8b)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/5079bb98-2518-466f-aabd-654637278c84)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/11cefeff-a1ff-483c-8537-ae5995e0b7e6)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/1e216186-7667-4c91-8edb-76589b91cf93)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/08edb75c-0718-47b5-b27d-d0c56bdf2249)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/8dbd9213-35a9-461e-acf6-255ed8ecc625)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/af09de35-b4cb-463d-af4c-9593ed46b2f0)
