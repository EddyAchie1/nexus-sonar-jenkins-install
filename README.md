# Jenkins, Nexus, and SonarQube Installation Script

## Introduction
This script automates the installation of Jenkins, Nexus, and SonarQube on a single EC2 instance. It is designed to save costs on AWS by consolidating multiple tools onto one server for practicing building CI/CD pipelines with Jenkins.

## System Requirements
Instance Type: T2 or T3 Large
Storage: 30GB root volume
Operating System: Ubuntu

![Screenshot 2025-04-18](https://github.com/EddyAchie1/nexus-sonar-jenkins-install/blob/main/D509BE5D-97E4-4FAC-A489-76802DC00FA5.jpeg)

## Tools Installed
Jenkins
Docker
Nexus (Docker container)
SonarQube (Docker container)

## Usage
Clone this repository to your local machine:

'''git clone https://github.com/EddyAchie1/nexus-sonar-jenkins-install/'''

Navigate to the directory containing the script:

'cd your-repo'

Execute the script:

'sudo bash install_tools.sh'

After installation, ensure that the default ports for the tools are allowed under the inbound rules of your EC2 instance:

**Jenkins:** Port 8080

**Nexus:** Port 8081

**SonarQube:** Port 9000

**SSH:** Port 22

![Screenshot 2025-04-18](https://github.com/EddyAchie1/nexus-sonar-jenkins-install/blob/main/96AD7631-9C78-4A20-BEA3-C6ADB406523F.jpeg)

## Important Note
Containers will stop whenever the instance is stopped. You can use the start_containers.sh script provided in this repository to start both containers again when you start your instance.

To access the shell of your container, please run the command docker exec -it "name of container" bash

You can get the name of your container by running docker ps

### If you run into permission issues, do the following:
Run the command sudo usermod -aG docker ${USER}
Run sudo su ubuntu
Try again

## Access URLs
After the installation is complete, you can access the following URLs to use the newly installed tools:

**Jenkins:** http://your-ec2-instance-ip:8080

**Nexus:** http://your-ec2-instance-ip:8081

**SonarQube:** http://your-ec2-instance-ip:9000

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
