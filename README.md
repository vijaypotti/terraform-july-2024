# Terraform July 2024 ( 8-12th July 2024 )

## Post test link

<pre>
https://rpsconsulting116.examly.io/contest/public?U2FsdGVkX1+fIQZxVWydvQ69DPtWb0bQ2LWqdTRGiSKTnMcPqJuTrP0IZiUFHDxRHyYL0bZfUaFoVGsukL9EBw==
</pre> 

## Training Feedback - kindly complete this
<pre>
https://survey.zohopublic.com/zs/xs0aau  
</pre>  

## Breaks
<pre>
Tea break - 11:15 am to 11:30 am
Lunch break - 1:15 pm to 2 pm
Tea break - 4:15 to 4:30 pm
</pre>  

## Lab - Cloning this repository
```
cd ~
git clone https://github.com/tektutor/terraform-july-2024.git
cd terraform-july-2024
ls -l
```


## Pre-test link (Kindly complete the pre-test and notify me )
<pre>
https://rpsconsulting116.examly.io/contest/public?U2FsdGVkX1+YJUekbu5BsepK1Ux5kjDo6BiIOKP6CGP6GKxonp3/V4JJ/TdrlPuIM+jTSTaECH4F/yTGKBM78A==  
</pre>

#### Note
<pre>
- Kindly provide your full name while registering for the pre-test
- You can use your personal email id (not the BOFA id)
- You don't have to provide your DOB
- You don't have to enable web camera
- Copy/Paste between your laptop and RPS cloud machine is disabled as per your Bank Policy

- Once everyone confirms that they have completed the pre-test, we can start the training
</pre>


## Kindly check your RPS Ubuntu lab machine 

Check if docker is installed
```
docker --version
```

Check if you have access to issue docker commands
```
docker images
```

In case you are getting Permission denied error, try the below command
```
id
sudo usermod -aG docker $USER
su $USER
id
docker images
```
When it prompts for password, type your ubuntu password(rps@12345).

Each time you open a new terminal, you need to type
```
id
su rps
id
docker images
```

Check if terraform is installed
```
terraform version
```

Check if azure cli is installed
```
az version
```

Check if ansible is installed
```
ansible --version
```

## Installing the required network tools
```
sudo apt update
sudo apt install -y net-tools iputils-ping openssh-server -y
```
