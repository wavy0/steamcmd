FROM ubuntu

run useradd -m steam

run echo "steam:a" | chpasswd

run chsh steam -s /bin/bash

run usermod -aG sudo steam

run apt -y update && apt -y upgrade && apt install -y sudo curl lib32gcc-s1 systemd 

run mkdir /steam/ && cd /steam/ && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - 

cmd ["/lib/systemd/systemd"]
