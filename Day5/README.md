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

