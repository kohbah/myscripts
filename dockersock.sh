#!/bin/bash
cd /
sudo apt-get update
cd
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
cd /
sudo mkdir /var/jenkins_home
sudo chown -R 1000:1000 /var/jenkins_home
sudo docker run -u root --name jenkins -d \
-v /var/jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 8080:8080 \
-p 50000:50000 --restart always jenkins/jenkins:lts \
\
