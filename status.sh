!/usr/bin/bash

serverName=$(hostname)


function memoryCheck() {
    echo "This script is to check the memory status on $serverName server"
    echo "The memory status on $serverName server is: "
    free -h 
    echo ""
}

function kernelInstalled() {
    echo "Current linux kernel installed on $serverName is: "
    uname -r
    echo ""
}

function diskUsage() {
    echo "Current disk usage on $serverName is: "
    df -h 
    echo ""
}

function cpuUsage() {
    echo "Current cpu usage on $serverName is: "
    top -i
    echo ""
}


function allChecks() {
    echo 
    "
        This program allows you to view the following about your server: 
        
        1) Memory Usage on your server 
        2) Kernel Installed on your server
        3) Disk Usage on your server 
        4) CPU Usage on your server 
    "

    echo -n "Choose your option: "
    read option 

    if [[ $option -eq 1 ]]
    then 
        memoryCheck
    
    elif [[ $option -eq 2 ]]
    then 
        kernelInstalled
    
    elif [[ $option -eq 3  ]]
    then 
        diskUsage
    
    elif [[ $option -eq 4 ]]
    then 
        cpuUsage

    else
        echo "option $option not found"
    
    fi
}


allChecks
