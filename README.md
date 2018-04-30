# csgo_auto
# To do manually

dpkg --add-architecture i386
apt-get update
apt-get install lib32gcc1
apt-get install screen
apt-get install git


adduser csgomain 

# as user csgomain

mkdir ~/csgo && cd ~/csgo
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -


cd ~/csgo && ./steamcmd.sh
> login anonymous
> force_install_dir /home/csgomain/csgo/csgo
> ....
> quit


cd ~ | wget 
