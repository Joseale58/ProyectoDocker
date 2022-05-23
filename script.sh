#!/usr/bin/bash
sudo apt update
sudo apt install git
cd /home/
sudo git clone https://github.com/Joseale58/ProyectoDocker.git
sudo docker build -t newspaper:v01 /home/contenedor_web/
sudo docker run -d -p 80:80 newspaper:v01 apachectl -D FOREGROUND