# Day 2

## To download the terraform providers, you can refer the below Terraform registry portal
<pre>
https://registry.terraform.io/providers/hashicorp/azurerm/latest  
</pre>

## Lab - Login to azure portal using az command line tool
```
az version
az login
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/27bd1c9c-49ba-4a17-b838-3247d4895013)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/a3651a74-9173-4188-89dc-7376a46a7da7)

## Lab - Loing to azure portal using Terraform 
```
cd ~/terraform-july-2024
git pull
cd Day2/azure-login
cat azure-login.tf
terraform init
terraform apply --auto-approve
```

Expected ouptut
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/f6ad4203-b6fe-4c2d-be4e-f9755ef36b69)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/c57e0c62-fb45-4c1f-a56a-b5248b3adf41)

## Lab - Finding the images availble in a specific azure region
```
az vm image list --location eastus2
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/39ee56ec-8226-4023-be6d-ff156df4b59b)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/86aa5f3e-2c96-4d32-b40d-6dbcabc87773)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/a183f8d7-7013-4acd-b020-5ce23c51bd59)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/a6cd6991-ee0f-4278-baa4-86d354c64ad5)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/8df1cf3d-c511-4ad8-8021-8a65108ae33c)

## Lab - Install docker and create a nginx container in the azure ubuntu VM
```
ssh -i ./key azureuser@<your-azure-ubuntu-vm-public-ip>

sudo apt update
sudo apt install docker.io

sudo su -
docker run -d --name nginx --hostname nginx -p 80:80 nginx:latest
docker ps
curl http://localhost:80
```

Now, you need to run the updated the terraform script under the Day2/create-azure-vm-with-ubuntu-os
```
terraform init
terraform apply --auto-approve
```

Then, you may try accessing the public ip of your ubuntu VM from any web browser on your mobile or any pc
```
http://<your-azure-ubuntu-public-ip>:80
```

## Lab - Creating multiple VMs in azure using Terraform
```
cd ~/terraform-july-2024
git pull
cd Day2/create-multiple-vms
terraform init
terraform apply --auto-approve
```

Expected output


Once you are done with this lab exercise, delete the resources 
```
cd ~/terraform-july-2024
git pull
cd Day2/create-multiple-vms
terraform destroy --auto-approve
```

Expected output
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/7fcb2790-37c4-4906-8d66-85d59e683c8f)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/af80af4a-72d8-4dc0-8d2d-a4480ca9c827)
![image](https://github.com/tektutor/terraform-july-2024/assets/12674043/ae9cc36b-0605-4894-b427-5e458ac4ac89)

