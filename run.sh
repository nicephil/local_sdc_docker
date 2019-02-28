#!/bin/sh
docker run -tid -v /home/llwang/repos/:/repos -p 22003:22 -p 80:80 -p 8080:8080 -p 443:443 -p 1080:1080 --privileged=true -v /sys/fs/cgroup:/sys/fs/cgroup centos:7.6.1810 /usr/sbin/init
#sudo docker exec -it  77a2fe43e9e1 bash
