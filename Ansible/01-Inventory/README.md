 1154  ls
 1155  apt-get install ansible -y 
 1156  ansible --version 
 1157  mkdir 00-Setup 01-Inventory
 1158  vim 00-Setup/README.md
 1159  ls
 1160  cd 01-Inventory/
 1161  ls
 1162  vim inventory
 1163  ip addr 
 1164  vim inventory
 1165  ls
 1166  ansible all -i inventory -m ping -u vagrant -k 
 1167  ansible web -i inventory -m ping -u vagrant -k 
 1168  vim inventory 
 1169  ansible web -i inventory -m ping -u vagrant -k 
 1170  ansible db -i inventory -m ping -u vagrant -k 
 1171  ls
 1172  vim inventory 
 1173  ansible prod -i inventory -m ping -u vagrant -k 
 1174  vim inventory 
 1175  ansible prod -i inventory -m ping 
 1176  history  
 1177  history   > README.md
