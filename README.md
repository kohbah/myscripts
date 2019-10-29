# myscripts
# site to install jfrog on docker
https://www.sumologic.com/blog/tutorial-run-artifactory-container/
#jfrog docker-compose and other ways of installing jrfog
https://bintray.com/jfrog/product/artifactory/download
#https://www.jfrog.com/confluence/display/RTF/Getting+Started+with+Artifactory+as+a+Docker+Registry#GettingStartedwithArtifactoryasaDockerRegistry-CompletetheSetup
#for aws instance ssh between ec2 linux  (ssh -i key ec2-user@ip) after creating a file called key and changing the mode to "chmod 600"


cd /
sudo mkdir -p /etc/nginx && sudo touch /etc/nginx/default.conf
sudo docker run -p 80:80 -p 443:443 --name nginx -d \
-v /etc/nginx/default.conf:/etc/nginx/default.conf \
--restart always \
--network nexus-net \
nginx:latest \
\


cd /
sudo mkdir /etc/nexus-data
sudo chmod 777 /etc/nexus-data
sudo docker run -p 8081:8081 --name nexus -d \
-v /etc/nexus-data:/nexus-data \
--restart always \
--network nexus-net \
sonatype/nexus3 \
\


docker network create nexus-net


new relic https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/data-instrumentation/monitor-containers-underlying-hosts-coreos


https://labs.play-with-docker.com/    to learn docker 
