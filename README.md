# Steps to Change the SSH Configuration and Update Password in a VM

## 1. Navigate to the SSH Configuration Directory:
First, access the SSH configuration files.
```bash
cd /etc/ssh/
ls
## 2. Navigate to sshd_config.d Directory:
# The sshd_config.d directory contains additional SSH configuration files. Go to that directory and list its contents.
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

