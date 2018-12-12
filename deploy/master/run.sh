#!/usr/bin/env bash


docker build -t salt-master .


docker run -it -p 4506:4506 -p 4505:4505 \
    -v$(pwd)/master:/etc/salt/master \
    -v $(pwd)/top.sls:/srv/salt/top.sls \
    -v $(pwd)/default.sls:/srv/salt/default.sls salt-master

