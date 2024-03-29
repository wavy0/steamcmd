FROM ubuntu

run apt-get -y update && apt-get -y upgrade && apt-get install -y curl lib32gcc-s1

run mkdir /steam/ && cd /steam/ && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - 

