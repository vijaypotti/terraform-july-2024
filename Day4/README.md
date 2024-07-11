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
