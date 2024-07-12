# Day 5

## Ansible Overview
<pre>
- Ansible is a configuration management tool
- Agentless
- Alternatives
  - Puppet - DSL Puppet Language
  - Chef - DSL Ruby
- Easy to install/learn
- DSL - Domain Specific Language - the language used to automate the configuraiton managent is YAML
- The servers that are managed by Ansible is called Ansible Node
- Ansible Nodes
  - can be an onPrem Server
  - can be a Virtual Machine in your Datacenter
  - can be an ec2 instance in AWS
  - can be an Azure Virtual machine in Azure cloud
  - can be a docker container
  - in Unix/Linux/Mac
    - SSH Server should be installed
    - Python should be installed
- Ansible Modules
  - there are Ansible modules to perform specific tasks
  - For installing/uninstalling/upgrading softwares in Debian/Ubuntu based Ansible nodes you can use apt ansible module
  - service module to manage linux services
  - for linux/unix/mac are implemented as python scripts
  - for windows are implemented as Powershell scripts
ansible inventory
  - connection details to ansible nodes are captured in the inventory file
    - static inventory
    - dynamic inventory ( python script )
ansible playbook
- automation code which is developed as YAML file that follows a specic sections
- it invokes many ansible modules in sequence or a specific order, you could also run certains stuffs in parallel
- is a collection of tasks, each task will invoke one ansible module
- developed in Python by Michael Deehan 
- Michael Deehaan started a company by Ansible Inc, through this company he developed Ansible core as an open source project
</pre>

## Lab - Using for loop in Terraform
```
cd ~/terraform-july-2024
git pull
cd Day5/loops/for
pwd
terraform init
terraform apply --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/b0fd1980-6759-44c9-b230-0205d173616a)
![image](https://github.com/user-attachments/assets/8c265b42-7add-4de8-abb1-e80183e87be6)
![image](https://github.com/user-attachments/assets/4ff19cd6-012c-4a7e-9743-794a8949ae87)

## Lab - Using for-each loop in Terraform
```
cd ~/terraform-july-2024
git pull
cd Day5/loops/for-each
pwd
terraform init
terraform apply --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/75a86ba8-c86a-48be-8963-c79a95c556d6)
![image](https://github.com/user-attachments/assets/c4323c71-c7cd-4cc5-9f70-89ee7893c79b)
![image](https://github.com/user-attachments/assets/c5b817b1-f6ab-44a1-bfab-9dbd36c3f34b)

## Lab - Invoking Ansible Playbook via Terraform to configure Terraform provisioned Azure Virtual Machines
```
cd ~/terraform-july-2024
git pull
cd Day5/TerraformWithAnsible
pwd
terraform init
terraform apply --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/f52c61cf-a686-4eb0-86a0-125096bcaf5b)
![image](https://github.com/user-attachments/assets/5d149ae2-854d-496d-9378-ae2101ac2f50)
![image](https://github.com/user-attachments/assets/b5f0179b-9366-4e09-bc35-7691e2574006)
![image](https://github.com/user-attachments/assets/fb0ba9fd-0977-4df3-9501-cf28501c69c6)
![image](https://github.com/user-attachments/assets/de90ba95-9bc8-4091-b585-9e4455daebb3)
![image](https://github.com/user-attachments/assets/1c542d20-770a-4e79-bba8-0b578a16665d)

## Lab - Creating reusable modules in Terraform and invoking from parent module
```
cd ~/terraform-july-2024
git pull
cd Day5/root-module
pwd
terraform init
terraform apply --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/c3afde1c-1828-4617-bb40-4304d2b87d8d)
![image](https://github.com/user-attachments/assets/79afafe8-46bc-40bb-b58f-aec90de60ee4)
![image](https://github.com/user-attachments/assets/3d6f6d43-7246-46b3-a0dd-d7160618439b)
![image](https://github.com/user-attachments/assets/7a071799-520e-4d0e-aa00-ca2f6a97c1fb)

Once you are done with this exercise, you may dicard the resources
```
terraform destroy --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/ea7f32e8-27ce-4b17-aaef-95b2413b1d5e)
![image](https://github.com/user-attachments/assets/7f56f13b-eaa8-404f-acbe-756ff1c7590f)

## Lab - Variable Validation 
```
cd ~/terraform-july-2024
git pull
cd Day5/variable-validation
pwd
terraform init
terraform apply --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/2e22e594-e15b-4cb2-a4e1-fbca5f345913)
![image](https://github.com/user-attachments/assets/e60f1a40-c2e3-494a-9a17-8e21b8b99099)
![image](https://github.com/user-attachments/assets/cd72112a-fc72-4cac-964e-0e741f604162)
![image](https://github.com/user-attachments/assets/3d0ceb64-42a9-40d0-8fd2-d6bf73a15903)

Once you are done with this exercise, you may discard the resources
```
terraform destroy --auto-approve
```
Expected output
![image](https://github.com/user-attachments/assets/bbe2805e-d24e-41d2-85ce-1f697699a8d6)
![image](https://github.com/user-attachments/assets/1beaa3fd-8b4d-4edd-8ac6-b44e77acd0a3)
![image](https://github.com/user-attachments/assets/afe10250-3f99-4e4f-b8fa-c162dfd23122)

## Lab - Creating Azure CostMosDB via Terraform
```
cd ~/terraform-july-2024
git pull
cd Day5/cosmosdb
pwd
terraform init
terraform apply --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/8aac8c80-dce4-4c8c-8507-feabb0ae4fea)
![image](https://github.com/user-attachments/assets/cadfeaef-faf2-49e4-9ed2-24e94d069662)
![image](https://github.com/user-attachments/assets/41804194-72fc-42bc-a627-727a30e0e417)
![image](https://github.com/user-attachments/assets/731a0d5b-c034-4d13-a3ff-f61314755efc)


Once you are done with this exercise you may delete the resources
```
terraform destroy --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/b63c867f-1416-4456-b123-e0c9794c8d22)
![image](https://github.com/user-attachments/assets/79eba94c-4c3e-4c8f-bf5a-d74e4b9d0fe6)

# Lab - Creating an azure container instance to deploy applicaiton using Terraform
```
cd ~/terraform-july-2024
git pull
cd Day5/azure-container-instance
pwd
terraform init
terraform apply --auto-approve
```

Expected output
![image](https://github.com/user-attachments/assets/8693df66-294b-4a93-8f26-212107c893a7)
![image](https://github.com/user-attachments/assets/77847221-7052-459e-94c0-c75400cde6cc)
![image](https://github.com/user-attachments/assets/14b54b77-048f-47de-bf0a-28ff6c7a7306)
![image](https://github.com/user-attachments/assets/3074371c-088a-4bb8-9f71-0dd79f21db83)
![image](https://github.com/user-attachments/assets/cdc1d36f-bc9e-4029-b97d-4580014715e7)


## Azure App Service Plan SKU
<pre>
Free Tier → F1
Shared Tier → D1
Basic Tier → B1, B2, B3 (Basic Small, Medium, Large)
Standard Tier → S1, S2, S3 (Small, Medium, Large)
PremiumV2 Tier → P1v2, P2v2, P3v2 (Small, Medium, Large)
</pre>

## What is Continuous Integration (CI)?
- the code you wrote is integrated with dev branch several times a day, which triggers a build and automated test execution
- this ensures your code commit hasn't broken any existing functions as it runs your newly added test cases and existing test cases
- this is a fail-fast approach followed in teams that follow any Agile Frameworks( SCRUM, Kanban, XP, etc., )

## What is Continuous Delivery (CD)?
- is an extension of Continuous Integration (CI) since it automatically deploys all code changes to a testing and/or production environment after the build stage. 

- deploying and testing in multiple environments improves quality

## What is Continuous Deployment (CD)?
- goes one step further than continuous delivery
- With this practice, every change that passes all stages of your production pipeline is released to your customers 
- There's no human intervention, and only a failed test will prevent a new change to be deployed to production

## What is DevOps?
- is the combination of cultural philosophies, practices, and tools that increases an organization’s ability to deliver applications and services at high velocity
- enables organizations to better serve their customers and compete more effectively in the market

## Getting familiar with Azure Pipeline Jargons
- Azure Pipeline
- Stage
- Steps
- Trigger
- Job
- Agent
- Task
- Artifact

## What is Azure Pipeline?
- automatically builds and tests code projects to make them available to others
- it supports almost any programming language 
- combines continuous integration (CI) and continuous delivery (CD) to test and build your code and ship it to any target

## Azure Self-hosted agent binaries for all supported Operating Systems can be found here
<pre>
https://github.com/Microsoft/azure-pipelines-agent/releases
</pre>

## Lab - Creating a self-hosted Azure Pipeline agent to run Terraform scripts

#### Create a Personal Access Token
From your Azure portal, search for "Azure DevOps organizations" and click the same
![Azure DevOps Organizations](azure1.png)

You will see below page now, click on "My Azure DevOps Organizations"
![Azure DevOps Organizations](azure2.png)
![image](https://github.com/user-attachments/assets/ec69379d-0253-4e0d-bca0-cdf0d20e8859)
Click on "Create new organization"
![image](https://github.com/user-attachments/assets/02b12d77-1944-45c7-a1fe-6241b0fef125)
Click "Continue" button
![image](https://github.com/user-attachments/assets/5c970c77-c61b-4ff3-b568-f47b695cb349)
Click "Continue" button
![image](https://github.com/user-attachments/assets/2b81c74c-b226-44a9-9520-015d7e5607b0)
![image](https://github.com/user-attachments/assets/ee808948-fc42-4350-8f75-f5385effdf5c)
![image](https://github.com/user-attachments/assets/3a739489-b49a-470a-a428-ad8134d1edee)
Click on "Create Project"
![image](https://github.com/user-attachments/assets/e27d1ff3-456e-4319-af9e-ddb87ab4f453)
Click on Pipeline
![image](https://github.com/user-attachments/assets/cfbd45f2-a77c-4153-9cf1-d85cbd7b4a55)
Click "Create Pipeline"
![image](https://github.com/user-attachments/assets/b2441238-bfb3-42ee-bb08-fa592ed84d51)
Select GitHub ( Third option )
![image](https://github.com/user-attachments/assets/87de10c5-e2b0-40d1-800f-bc42a1fbabf2)
![image](https://github.com/user-attachments/assets/60fc0fea-ffc8-402a-9f7a-b74fc5e31df7)
Click "Authorize Azure Piplines"
![image](https://github.com/user-attachments/assets/99be695f-2d5a-4085-a804-594b00b4ab81)
Select "Use your password"
![image](https://github.com/user-attachments/assets/da4f82e6-4b26-40ef-822b-1fb9e13d8cad)
Click "Confirm" button
![image](https://github.com/user-attachments/assets/059f5829-5577-4e8a-832f-9d5a42ec0945)
Select "tektutor/terraform-july-2024"
![image](https://github.com/user-attachments/assets/6db0aa8a-77cb-4e04-af02-245ad37ff62a)
Approve and Install
![image](https://github.com/user-attachments/assets/f1c0a5e0-9668-4605-a02b-4aa5d4aaec09)
![image](https://github.com/user-attachments/assets/8dc3c7cc-0dbb-465e-b02b-957f8ff6fc10)
![image](https://github.com/user-attachments/assets/84a8f12a-4f72-46d0-ae96-1e3ca751fd12)
![image](https://github.com/user-attachments/assets/13aa46de-7e0d-4f66-bd68-b71d4709d2e5)
![image](https://github.com/user-attachments/assets/e1bf6289-e439-4c0d-ade6-5150c33f8ae5)
Select "show more"
Se



Once you have created your new organization, create a Personal Access Token with Full access and save the token in your system in some text file.  This token will be required to register your self-hosted pipeline agent with your project.
![Azure DevOps Organizations](azure3.png)

1. Provision an Ubuntu 20.04 Virtual Machine in your azure portal.
2. Install azure cli, terraform cli and ansible
```
sudo apt update
sudo apt install -y git ansible tree vim default-jdk maven docker.io
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
sudo snap install terraform --classic
sudo usermod -aG docker $USER
sudo su $USER
docker --version
docker images
mvn --version
javac -version
git -version
az version
terraform version
```
3. From the terminal, type the below command, copy the code and paste the code on the web page that popped up and login to your azure portal to authenticate.
```
az login
```
Copy the credentials details in some file for your future reference.


4. Install the below from terminal to configure the Azure Ubuntu VM as a self-hosted Azure Pipline agent
```
mkdir myagent && cd myagent
wget https://vstsagentpackage.azureedge.net/agent/3.242.0/vsts-agent-linux-x64-3.242.0.tar.gz
tar zxvf vsts-agent-linux-x64-3.242.0.tar.gz
ls
./config.sh
./run.sh
```

Expected output
<pre>
azureuser@my-terraform-agent-vm:~/myagent$ <b>ls</b>
bin  config.sh  env.sh  externals  license.html  run-docker.sh  run.sh  vsts-agent-linux-x64-2.213.2.tar.gz
azureuser@my-terraform-agent-vm:~/myagent$ <b>./config.sh</b>

  ___                      ______ _            _ _
 / _ \                     | ___ (_)          | (_)
/ /_\ \_____   _ _ __ ___  | |_/ /_ _ __   ___| |_ _ __   ___  ___
|  _  |_  / | | | '__/ _ \ |  __/| | '_ \ / _ \ | | '_ \ / _ \/ __|
| | | |/ /| |_| | | |  __/ | |   | | |_) |  __/ | | | | |  __/\__ \
\_| |_/___|\__,_|_|  \___| \_|   |_| .__/ \___|_|_|_| |_|\___||___/
                                   | |
        agent v2.213.2             |_|          (commit 4f90e68)


>> End User License Agreements:

Building sources from a TFVC repository requires accepting the Team Explorer Everywhere End User License Agreement. This step is not required for building sources from Git repositories.

A copy of the Team Explorer Everywhere license agreement can be found at:
  /home/azureuser/myagent/license.html

Enter (Y/N) Accept the Team Explorer Everywhere license agreement now? (press enter for N) > <b>N</b>

>> Connect:

Enter server URL > https://dev.azure.com/azurejegan
Enter authentication type (press enter for PAT) > 
Enter personal access token > ****************************************************
Connecting to server ...

>> Register Agent:

Enter agent pool (press enter for default) > 
Enter agent name (press enter for my-terraform-agent-vm) > 
Scanning for tool capabilities.
Connecting to the server.
Successfully added the agent
Testing agent connection.
Enter work folder (press enter for _work) > 
2022-11-24 23:37:14Z: Settings Saved.

azureuser@my-terraform-agent-vm:~/myagent$ <b>./run.sh</b>
Scanning for tool capabilities.
Connecting to the server.
2022-11-25 00:15:55Z: Listening for Jobs
</pre>

## ⛹️‍♂️ Lab -Creating an Linux Azure Pipeline self-hosted agent using Terraform
```
cd ~/terraform-dec-2022
git pull
cd Day5/self-hosted-azure-pipeline-linux-agent

export AZDO_ORG_SERVICE_URL=https://dev.azure.com/jegantektutor
export AZDO_PERSONAL_ACCESS_TOKEN=your-azuredevops-organization-personal-access-token

terraform init
terraform apply --auto-approve  -var your_devops_organization_name=jegantektutor -var your_devops_organization_personal_access_token=your-pat
```

## ⛹️‍♂️ Lab -Creating a Windows Azure Pipeline self-hosted agent using Terraform
```
cd ~/terraform-dec-2022
git pull
cd Day5/self-hosted-azure-pipeline-windows-agent

export AZDO_ORG_SERVICE_URL=https://dev.azure.com/jegantektutor
export AZDO_PERSONAL_ACCESS_TOKEN=your-azuredevops-organization-personal-access-token

terraform init
terraform apply --auto-approve -var your_devops_organization_name=jegantektutor -var your_devops_organization_personal_access_token=your-pat
```

## ⛹️‍♂️ Lab - Creating an azure pipeline that invokes Terraform scripts

Create a Azure DevOps Pipeline using the below GitHub. Please fork the below GitHub repository to your GitHub account, before creating the Azure pipeline.
```
https://github.com/tektutor/terraform-azure-pipelines.git
```
