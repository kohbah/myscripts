#!/bin/bash
apt-get update
cd
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
cd /
sudo mkdir /var/jenkins_home
sudo docker run -d -v /var/jenkins_home:/var/jenkins_home -p 8080:8080 \
-p 50000:50000 --name jenkins jenkins/jenkins:lts \
\
