#!/bin/bash
cd /
sudo apt update
cd
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
sudo yum install java-1.8.0-openjdk-devel
cd /
sudo docker pull docker.bintray.io/jfrog/artifactory-oss:latest
sudo docker volume create --name artifactory_volume
sudo docker run --name artifactory -d -v \
artifactory_volume:/var/opt/jfrog/artifactory -p 8081:8081 \
--restart always docker.bintray.io/jfrog/artifactory-oss:latest \
\
