#!/bin/bash
checkContainerID(){
    docker ps -a >> listContainer.txt
    awk "{print $1}" listContainer.txt
    # echo $containerID
    
}
checkContainerID