#!/bin/bash

sudo docker run -d -p 8081:8081 sonatype/nexus3:latest 
sudo docker run -d -p 9000:9000 sonarqube:lts-community
