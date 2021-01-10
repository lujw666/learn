#!/bin/bash
docker container rm -f learn
docker run -d --privileged -v ${PWD}:/data --name learn lujiawei/learn