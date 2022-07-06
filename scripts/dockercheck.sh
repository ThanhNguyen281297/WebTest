#!/bin/bash
checkContainerID(){
    docker ps -a >> listContainer.txt
    containerID=$(awk '{print $1}' listContainer.txt)
    if [$containerID]
    then
        echo $containerID
    else
        docker pull nginx
        docker run -it -d -p 8081:80 nginx:latest 
    fi
}
checkContainerID