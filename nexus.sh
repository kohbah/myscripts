#!/bin/bash
cd /
sudo apt update
cd
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
sudo yum install java-1.8.0-openjdk-devel
cd /
sudo docker pull sonatype/nexus3
docker volume create --name nexus-data
docker run -d -p 8081:8081 --name nexus \
-v nexus-data:/nexus-data sonatype/nexus3 \
\
