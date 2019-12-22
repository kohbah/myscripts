https://github.com/openstack/devstack.git    for openstack.  local.conf with teh following 

[[local|localrc]]
HOST_IP=0.0.0.0   #replace 0.0.0.0 with your ip
ADMIN_PASSWORD=secret
DATABASE_PASSWORD=$ADMIN_PASSWORD
RABBIT_PASSWORD=$ADMIN_PASSWORD
SERVICE_PASSWORD=$ADMIN_PASSWORD

https://github.com/openshift/openshift-ansible.git    for openshift. 
