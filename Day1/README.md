![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/01173504-db12-47f8-a64e-b73e12cbd1f6)# Day 1


## Processor with multiple cores
<pre>
- Hyperthreading
  - each Physical CPU core is seen as 2 Logical(virtual) cores by the Hypervisor(virtualization software)
- If you have a laptop with below configuration
  - Dual core ( 4 Virtual Cores )
  - 8 GB RAM
  - 100 GB HDD Storage
- Max number of Virtual Machines that runs in the laptop with above configuration
  - 2 VMs can easily run
  - Linux VM eacth with 1 Virtual core, 2 GB RAM
- Host OS
  - 2 Virtual Cores
  - 4 GB RAM
</pre>

## Hypervisor
<pre>
- each Virtual Machine(VM) represents 1 Operating System
- each VM requires dedicated hardware resources
  - CPU
  - RAM
  - Storage
- hence, it is a heavy-weight virtualization
</pre>  

## Containerization
<pre>
- an application virtualization technology
- If you have a laptop with below configuration
  - Dual core ( 4 Virtual Cores )
  - 8 GB RAM
  - 100 GB HDD Storage
- How many mysql container instances you run ?
  - easily 10~15 containers you can run
- containers are light-weight
  - they don't required dedicated hardware resources
  - each container represents 1 application
- containers will never able to replace virtualizaton
- containers are not competing technology to virtualization
- containers are a completing technology, hence both hypervisor and containers can co-exist and lots of time they are used in combination
</pre>

## Lab - Cloning this repository
```
cd ~
git clone https://github.com/tektutor/terraform-july-2024.git
cd terraform-july-2024
ls -l
```

## Demo - Install Docker Community Edition in Ubuntu 24.04 ( Already installed in your lab machine )
```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo usermod -aG docker $USER
docker --version
docker images
```

## Demo -  Installing Ansible ( It is already installed on your lab machine )
```
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

ansible --version
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/72a4599d-15ab-41d2-885e-88cbe7e75387)

## Demo - Installing Terraform in Ubuntu ( It is already installed on your lab machine )
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \

sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint


echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update

sudo apt-get install terraform

terraform version
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/d346a685-c4ca-4899-ae71-15dfb281c763)

## Demo - Install azure cli in Ubuntu
```
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/772997a0-98de-492b-942b-9e6a6d355ea5)

## Info - Linux Kernel Container Features
<pre>
- Linux Kernel support 2 container related features
  1. Namespace 
     - helps isolating one container from other container running in the same system
  2. Control Group (CGroups)
     - helps in applying resource quota restrictions on a container level
       - what is the max number of CPUs a container can utilize at any point of time
       - what is teh max RAM a container can use at point of time
       - what is the max hard disk storage one container can utilize
</pre> 

## Info - Container Runtime
<pre>
- low-level software that depends on Linux Kernel features like Namespace and Control Groups
- it is not user-friendly, hence normally no one uses this directly
- they are used only by Container engines
- Examples
  - runC is a Container Runtime
  - CRI-O is a Container Runtime
</pre>

## Info - Container Engine
<pre>
- Container Engine is a high-level software that helps manage container images and container life-cycle
- Container engines are user-friendly software which can be used by end-users like us
- Container engines internally uses Container Runtimes to manage images and container
- Example
  - Docker is a Container Engine which internally depends on Containerd which in turn depends on runC
  - Podman is a Container Engine which intenrally depends on CRI-O Container Runtime
</pre> 

## Info - How we are able to run a linux container on Windows machines?
<pre>
- when you install Docker in Windows or Mac, it also installs a thin-linux layer which provides the linux kernel on Mac and Windows machines
- so when you create and start a container in Windows/Mac, technically it is still running on top of Linux Kernel even on a Windows/Mac machine
</pre> 

## Info - Can I run a .dot windows application within a container on Linux/Windows?
<pre>
- Yes it is possible to run dotnet application in Linux/Windows
- MONO is a dotNet framework implementation for Linux
- Just like Linux kernel, Microsoft also supports something called Microsoft core (Windows Kernel) using this it is technically possible to run windows applications as container on Linux machines
</pre>
## Info - Docker Overview
<pre>
- Follows client/server architecture
- docker is the client tool
- dockerd is the server tool which runs a background service ( daemon )
- the local docker client will be communicating with the docker server via unix socket
- the remote docker clients will be communicating with the docker server via REST API
- by default the server won't support the REST endpoints, hence it must be configured once
- Docker Image
  - is a blueprint of docker container
  - whatever tools and software you need on the container, you may prepare an image with all those tools
  - using a docker image container instances can be created
- Docker Container
  - is an instance of the docker container
  - each container gets an IP address usually a Private IP address
  - each container runs in a separate namespace
  - every container has its own network work ( software defined network card - virtual network card )
  - every container has its own file system
</pre>  


## Lab - Download docker image from Docker Remote Registry ( docker hub website )
```
docker images
docker pull ubuntu:16.04
docker pull mysql:latest
docker images
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/a1e2d74c-7745-4204-ad14-5a655133a69b)


## Lab - Redeeming your Microsoft Azure Pass Promo Code
You will find the instruction at the below url
<pre>
https://www.microsoftazurepass.com/Home/HowTo?Length=5
</pre>

![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/c3a61195-152a-4fc9-ac1b-35e02e283200)


## Info - Types of Scaling
<pre>
1. Horizontal Scaling
   - Procuring another machine
2. Vertical Scaling
  - Upgrading the existing machine
    - Upgrading RAM, Disk, Processor with more CPU Core in it
</pre>  

# Info - Different types of Cloud Services
<pre>
1. Infrastructure as a Service ( IaaS)
2. Platform as a Service ( PaaS)
3. Software as a Service ( SaaS )
</pre>

#### Infrastructure as a Service ( IaaS )
<pre>
- In this model, we will be renting only the hardware ( server/workstation )
- But you need to bring the OS License, installation of OS is your responsibility
- Applying security patches, upgrading OS is all your responsibility
- the Public cloud vendor ( AWS, Azure, GCP, Digital Ocean, etc., ) they only offer the Hardware
  - if you want a Server/Workstation with Processor that supports more CPU cores, RAM and Disk the public cloud vendor will be able to support this on the hardware
  - everyone on the OS and softwares is our responsibility
</pre>

#### Platform as a Service ( PaaS )
<pre>
- In this model, we will be renting Hardware + Operating System with license
- The public cloud vendor is responsible for Hardware + OS ( upgrade, security patches, etc., )
- You should procure your own Software license ( App Server, Web Server, DB Servers, etc )
</pre>

#### Software as a Service ( SaaS )
<pre>
- In this model, we will be renting Hardware + OS + Software
- For example, if you need Oracle DB Server in Azure, you can go for this model
  - Azure team will take care of Your Hardware + OS + Software is always up and running
  - Azure will take care of your data backup ( Oracle DB, Table, Records, etc )
  - You can focus on the application development/maintenance, testing/operations related activities
</pre>

## Info - AWS Cloudformation
<pre>
- an Infrastructe as a Code Tool from AWS
- using this, one can automate provisioning AWS resoures using their own proprietary tool
- Cloudformation supports automating infrastruce only in AWS
  
</pre>  

## INfo - Terraform Overview
<pre>
- An Infrastruture as a Code Tool
- Terraform uses Provider plugins to automate infrastructure in different environments
  - docker provider to manage container images and containers
  - vmware provider to manage virtual machines
- cloud newtral infrastructure as a code tool
- converting system provisioning into code
- automate the system provisioning activite using Terraform
</pre>

## Info - Infrastructure as a Code Tool
<pre>
- is a provisioning tool
- using this, one can create a virtual machine locally or in private or public or hybrid cloud environments
- you create VM with OS
</pre>

## Info - Configuration Management Tool
<pre>
- assume you have a virtual machine with some OS installed, but you need Kubernetes cluster on that which is missing
- you could use Configuration Management tools to install the required softwares on an existing VM
- Examples
  - Ansible, Puppet and Chef
</pre>

## Info - Infrastructure as a Code Tool vs Configuraiton Management Tool
<pre>
- infrastructure as a code tool
  - creating a virtual machine in onPrem 
  - creating a virtual machine in AWS, Azure, GCP, etc
  - Installing OS on a baremetal machine
  - provisioning is the strength of Infrastructure as a code Tool like Terraform
- configuration management tools
  - requirement is there must be machine with OS to perform any of the below activities
  - installation sofwares, uninstalling softwares, upgrading softwares
  - start/stop/restart/enable/disable service
  - creating/editing/deleting user - user management
  - installing web servers, app servers, db servers
- though Ansible being a configuration management tool can also provision VMs in Azure, the primary strength of Ansible is configuration management not Provisioning, hence we must use Terraform to do the provisioning and let Ansible perform the configuration management activities
</pre>


## Lab - Download a docker image from Docker Hub to Local Registry using Terraform
```
cd ~/terrform-july-2024
git pull
cd Day1/lab1
cat download_docker_image.tf
docker images
terraform init
terraform apply
docker images
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/b6995178-fcc3-46b3-83d2-c8b6df8ec3d3)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/88b0f5b6-e212-4b57-9859-958f6c9c5b9b)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/7bf1ea0e-0e1b-4669-9a7d-d3f2a57cb5b0)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/71b96cab-af3c-493f-841a-af7b3d4eb74f)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/fd8ed33b-e947-46e6-889b-f515f8de8364)

## Lab - Destroying the resources created by Terraform
```
cd ~/terraform-july-2024
git pull
cd Day1/lab1
terraform show
docker images
terraform destroy
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/59a5ef4f-5634-4246-9d7f-a5a6f8e7d187)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/d5ab21d4-dd5e-49a8-a991-eb7ee0aa903c)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/2340cb1a-a91d-4966-8829-972faa1f25a8)

## Lab - Provisioning a nginx web server container using Terraform
List the docker images
```
docker images
```

List the currently running containers
```
docker ps
```

Let's provision 
```
cd ~/terraform-july-2024
git pull
cd Day1/lab2
cat provision-container.tf
terraform init
ls -lha
terraform apply

docker images
docker ps
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/430ba8c0-a786-4d7f-8b27-5a54f62ae1c5)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/da4c8b74-ea10-4245-bcf2-b96d234061a4)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/bdb356f2-6092-4863-bb57-7c550e30846c)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/d61ec641-fa14-4401-848f-dbf70e0d6fb2)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/33d25285-856f-41b4-9a9a-ee88ad7b60b1)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/0d8a5689-1275-4c20-8cdb-ff1f9072fa28)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/3ab3fca8-2f47-4708-9fc8-24706463baea)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/337547c8-f9d1-4386-9a3e-cf82b8c67644)

#### Discarding the resource created by terraform
```
docker images
docker ps
terraform destroy --auto-approve
docker images
docker ps
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/ecf31b82-54b9-49a1-b040-370640ebaa10)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/7ab8f8cb-ec34-4073-9599-83efd220d25a)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/291a80c6-fbc2-42b4-931f-de2255270554)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/2abd52b0-9293-4349-9bf0-f25b560a4238)
