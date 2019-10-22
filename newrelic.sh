docker run \
    -d \
    --name newrelic-infra \
    --network=host \
    --cap-add=SYS_PTRACE \
    -v "/:/host:ro" \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
     --restart always newrelic 
