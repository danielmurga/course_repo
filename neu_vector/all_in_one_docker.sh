    
    
    #management allinone
     docker run -d \
       --name allinone \
       --pid=host \
       --privileged \
       -e CLUSTER_JOIN_ADDR=10.204.0.21 \
       -e NV_PLATFORM_INFO=platform=Docker \
       -p 18300:18300 \
       -p 18301:18301 \
       -p 18400:18400 \
       -p 18401:18401 \
       -p 18301:18301/udp \
       -p 8443:8443 \
       -v /lib/modules:/lib/modules:ro \
       -v /var/neuvector:/var/neuvector \
       -v /var/run/docker.sock:/var/run/docker.sock:ro \
       -v /sys/fs/cgroup:/host/cgroup:ro \
       -v /proc:/host/proc:ro \
       neuvector/allinone:latest    

