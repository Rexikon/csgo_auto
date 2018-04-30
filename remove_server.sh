#!/bin/bash

#make_server
#author          :Rexikon


if [ "$#" -ne 1 ]; then
        echo "Make server"
    echo "Usage: server_name"
    exit
fi


server_name=$1

/home/csgomain/$server_name stop

rm -Rf /home/csgomain/servers/$server_name
rm -Rf /home/csgomain/$server_name





