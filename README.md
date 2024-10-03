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
# Q3 Command Check if Jenkins is in the Docker group
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
