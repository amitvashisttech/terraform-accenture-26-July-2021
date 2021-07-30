# Install Jenkins     

### Install Default Java JDK
```
apt-get update; apt-get install default-jdk maven -y 
```

### Download Jenkins 
```
cd /root
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
java -jar /root/jenkins.war --httpPort=8081 & 
```
