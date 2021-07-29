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
 1178  ls
 1179  cd ..
 1180  ls
 1181  cp -rf 01-Inventory 02-Playbook 
 1182  ls
 1183  cd 02-Playbook/
 1184  ls
 1185  mv inventory hosts
 1186  ls
 1187  vim playbook.yaml
 1188  ls
 1189  ansible-doc  -l 
 1190  ansible-doc apt 
 1191  ls
 1192  ansible-playbook -i hosts playbook.yaml 
 1193  vim playbook.yaml 
 1194  ansible-playbook -i hosts playbook.yaml 
 1195  systemctl stop apache2 
 1196  systemctl status  apache2 
 1197  ansible-playbook -i hosts playbook.yaml 
 1198  ls
 1199  grep -A host_key_checking /etc/ansible/ansible.cfg 
 1200  grep -A host_key_check /etc/ansible/ansible.cfg 
 1201  grep -i host_key_check /etc/ansible/ansible.cfg 
 1202  grep -i host_key_check /etc/ansible/ansible.cfg  >> ansible.cfg
 1203  grep -i inventory /etc/ansible/ansible.cfg 
 1204  grep -i inventory /etc/ansible/ansible.cfg >> ansible.cfg 
 1205  grep -i privilege /etc/ansible/ansible.cfg  
 1206  grep -iA5 privilege /etc/ansible/ansible.cfg  
 1207  grep -iA5 privilege /etc/ansible/ansible.cfg  >> ansible.cfg 
 1208  ls
 1209  vim ansible.cfg 
 1210  ansible-playbook -i hosts playbook.yaml 
 1211  ansible-playbook  playbook.yaml 
 1212  systemctl status  apache2 
 1213  ansible-playbook  playbook.yaml 
 1214  ls
 1215  ansible-playbook  playbook.yaml 
 1216  cat hosts 
 1217  vim playbook.yaml 
 1218  cat hosts 
 1219  ansible-playbook  playbook.yaml 
 1220  vim playbook.yaml 
 1221  ansible-playbook  playbook.yaml 
 1222  vim playbook.yaml 
 1223  ls
 1224  mkdir files 
 1225  vim files/index.html
 1226  ansible-playbook  playbook.yaml 
 1227  ls
 1228  mkdir templates
 1229  ls
 1230  vim templates/info.j2
 1231  ls
 1232  vim playbook.yaml 
 1233  ansible-playbook  playbook.yaml 
 1234  ls
 1235  vim playbook.yaml 
 1236  ansible-playbook  playbook.yaml 
 1237  ls
 1238  vim playbook.yaml 
 1239  ansible-playbook  playbook.yaml 
 1240  vim playbook.yaml 
 1241  ansible-playbook  playbook.yaml 
 1242  vim playbook.yaml 
 1243  ansible-playbook  playbook.yaml 
 1244  vim playbook.yaml 
 1245  ansible-playbook  playbook.yaml 
 1246  history 
 1247  history > README.md 
