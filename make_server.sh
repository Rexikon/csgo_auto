#!/bin/bash

#make_server

if [ "$#" -ne 4 ]; then
	echo "Make server"
    echo "Usage: server_name server_hostname server_password rcon_password"
    exit
fi

server_name=$1
hostname=$2
sv_password=$3
rcon_password=$4




echo "hostname \"$hostname\"
sv_password \"$sv_password\"
sv_timeout 60
rcon_password \"$rcon_password\"
mp_autoteambalance 1
mp_limitteams 1
writeid
writeip " > csgo/csgo/cfg/server.cfg



mkdir /home/csgomain/servers/$server_name

cp -R /home/csgomain/csgo/* /home/csgomain/servers/$server_name
cp /home/csgomain/launcher_sample.conf /home/csgomain/servers/$server_name/launcher.conf
cp /home/csgomain/csgo-server-launcher.sh /home/csgomain/servers/$server_name/launcher.sh
ln -s /home/csgomain/servers/$server_name/launcher.sh /home/csgomain/$server_name
chmod +x /home/csgomain/$server_name

sed -i  "s/patchtoconfig/\/home\/csgomain\/servers\/$server_name\/launcher.conf/g" /home/csgomain/servers/$server_name/launcher.sh
sed -i  "s/rootdirecotrytogame/\/home\/csgomain\/servers\/$server_name\/csgo/g" /home/csgomain/servers/$server_name/launcher.sh
sed -i  "s/csgotochange/$server_name/g" /home/csgomain/servers/$server_name/launcher.conf

chmod -R 755 /home/csgomain/servers/$server_name

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


echo "Now go to ${red}/home/csgomain/servers/$server_name/ and edit ${green}launcher.conf${reset}"
echo "To manage (start|stop|status) your server type  ${green}./$server_name${reset} command"