# Install Ansible 

```
apt-get update 
```

```
apt-get install ansible sshpass python -y 
```

```
ansible --version 
```

```
cat /etc/ssh/sshd_config  | grep -i "PasswordAuthentication"
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
systemctl restart sshd 
```

