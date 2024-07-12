# Day 5

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
