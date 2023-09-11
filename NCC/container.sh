#!/bin/bash

docker run -d -it --memory="512m" --name container1 -v $(pwd)/Judge/container1:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container2 -v $(pwd)/Judge/container2:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container3 -v $(pwd)/Judge/container3:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container4 -v $(pwd)/Judge/container4:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container5 -v $(pwd)/Judge/container5:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container6 -v $(pwd)/Judge/container6:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container7 -v $(pwd)/Judge/container7:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container8 -v $(pwd)/Judge/container8:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container9 -v $(pwd)/Judge/container9:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash
docker run -d -it --memory="512m" --name container10 -v $(pwd)/Judge/container10:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash

# docker run -d -it --memory="512m" --name container69 -v $(pwd)/Judge:/src --security-opt seccomp=$(pwd)/seccomp/script.json python bash


# To Spawn container for isolation environment

