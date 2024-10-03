# Q1 Steps to Change the SSH Configuration and Update Password in a VM

## 1. Navigate to the SSH Configuration Directory:
First, access the SSH configuration files.
cd /etc/ssh/
ls
## 2. Navigate to sshd_config.d Directory:
cd sshd_config.d
ls
## 3. Edit SSH Configuration Files:
sudo vim 60-some-config.conf
## 4. You can add or modify SSH configuration options like:
PasswordAuthentication yes
## 5. Change the Password for the VM User:
sudo passwd ubuntu
## 6. Restart the SSH Service:
sudo systemctl restart ssh
# Q2 Identity and access Management system(IAM)
Define: AWS identity and access Management is a web service that help you security control access to AWS resources you used IAM to control who is authenticated(signin) and authorized(has permission) to ues resources.
<<<<<<< HEAD
# Q3 Command Check Jenkins is in the Docker group:
sudo usermod -aG docker jenkins

sudo systemctl restart jenkins
  # Terraform
## Q4 What is Terraform?

Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows users to define and manage infrastructure using a declarative configuration language called HashiCorp Configuration Language (HCL) or JSON. With Terraform, you can automate the provisioning and management of resources across various cloud providers (such as AWS, Azure, Google Cloud), as well as on-premises data centers.

### Why use Terraform?

- **Automates infrastructure**: Manages cloud and on-prem resources efficiently.
- **Ensures consistency**: Uses Infrastructure as Code for repeatable deployments.

## Key Terraform Commands

- **`terraform init`**: Initializes a Terraform configuration.
- **`terraform plan`**: Shows an execution plan of changes.
- **`terraform apply`**: Applies the changes to reach the desired state.
- **`terraform destroy`**:  Applies the changes to reach the desired state.
 ## Terraform Project
 To create a project using Terraform for deploying an AWS infrastructure
 ## Project Purpose:
"Automated Deployment of a Web and CI/CD Server on AWS EC2 with Terraform"
 ## Project Components:
 ## (1) EC2 Instance:
 **AMI** : Ubuntu 24.04 LTS for running both the web server (e.g., Nginx) and Jenkins.

**Instance Type** : t2.micro, suitable for low-cost, small-scale workloads.

**Key Pair** : Provides SSH access to manage the instance.

**User Data Script** : Automatically installs necessary services (Nginx, Jenkins, Docker) on instance startup.
## (2)Security Group:
**Open Ports**:
**Port 80 (HTTP):** For website or web app access.

**Port 443 (HTTPS):** For secure web access.

**Port 22 (SSH):** For secure remote access to the instance.

**Port 8080 (Jenkins):** For CI/CD tool access.

**Port 4440 (Custom Port):** For additional applications.

 ## (3) Automation:

**User Data:** A script for auto-installing Nginx (for web hosting), Jenkins (for CI/CD), and Docker (for containerized deployments).

**Public IP Output:** Terraform outputs the public IP for easy access to the deployed services.
 # 1. AWS Provider Block
provider "aws" {

  region     = "us-east-1"
  
  access_key = "acces key"
  
  secret_key = "secret key"
  
}

This block configures the AWS provider, allowing Terraform to interact with AWS services.




 
