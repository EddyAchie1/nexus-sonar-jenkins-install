#!/bin/bash

# Author: Edmund Acheampong

# Use: Installs Jenkins, Nexus, and SonarQube on the same EC2 instance

sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y
sudo apt install docker.io -y

sudo docker run -d -p 8081:8081 sonatype/nexus3:latest 
sudo docker run -d -p 9000:9000 sonarqube:lts-community

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y

sudo ufw allow 22,8080,8081,9000/tcp
sudo ufw --force enable
sudo ufw reload 

echo "Installation is complete, you can access the following URLs to use the newly installed tools:"
echo "Jenkins: http://your-ec2-instance-ip:8080"
echo "Nexus: http://your-ec2-instance-ip:8081"
echo "SonarQube: http://your-ec2-instance-ip:9000"
