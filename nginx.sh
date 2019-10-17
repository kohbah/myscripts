cd /
sudo mkdir -p /etc/nginx && sudo touch /etc/nginx/default.conf
sudo docker run --name nginx -d \
-v /etc/nginx/default.conf:/etc/nginx/default.conf \
-p 80:80 --restart always nginx:latest \
\
