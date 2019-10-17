sudo docker run --name nginx -d \
-v /etc/nginx/default.conf:/etc/nginx/default.conf \
-p 80:80 --restart always nginx:latest \
\
