  #scanner image

     docker run -td \
       --name scanner \
       -e CLUSTER_JOIN_ADDR=10.204.0.21 \
       -e NV_PLATFORM_INFO=platform=Docker \
       -p 18402:18402 \
       -v /var/run/docker.sock:/var/run/docker.sock:ro \
       neuvector/scanner:latest
