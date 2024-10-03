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
# Command Check Jenkins is in the Docker group:
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
# Terraform
## What is Terraform?

Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows users to define and manage infrastructure using a declarative configuration language called HashiCorp Configuration Language (HCL) or JSON. With Terraform, you can automate the provisioning and management of resources across various cloud providers (such as AWS, Azure, Google Cloud), as well as on-premises data centers.

### Why use Terraform?

- **Automates infrastructure**: Manages cloud and on-prem resources efficiently.
- **Ensures consistency**: Uses Infrastructure as Code for repeatable deployments.

## Key Terraform Commands

- **`terraform init`**: Initializes a Terraform configuration.
- **`terraform plan`**: Shows an execution plan of changes.
- **`terraform apply`**: Applies the changes to reach the desired state.
- **`terraform destroy`**:  Applies the changes to reach the desired state.

=======
# Q3 Command Check if Jenkins is in the Docker group
sudo usermod -aG docker jenkins

sudo systemctl restart jenkins
