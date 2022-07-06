#!/bin/bash
checkContainerID(){
    docker ps -a >> listContainer.txt
    containerID = `awk '{print $1}' listContainer.txt`
    echo $containerID
}
checkContainerID