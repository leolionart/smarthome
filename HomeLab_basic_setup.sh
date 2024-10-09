#!/bin/bash

##################################################################################################
# The Ultimate Homekit Hub.                                                                      #
# Copyright (C) leolion                                                                 #
#                                                                                                #                       #
##################################################################################################
echo " "
echo " "
echo " "
# System Upgrade
echo "----------------------------------------------------------------"
echo "Commence System Upgrade"
echo "----------------------------------------------------------------"
sudo apt-get update && sudo apt-get upgrade -y
echo "----------------------------------------------------------------"
echo "System Upgrade Completed"
echo "----------------------------------------------------------------"
echo " "
echo " "
echo " "
# Docker setup
echo "----------------------------------------------------------------"
echo "Commence Docker Setup"
echo "----------------------------------------------------------------"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi
echo "----------------------------------------------------------------"
echo "Docker Setup Completed"
echo "----------------------------------------------------------------"
echo " "
echo " "
echo " "

# Dockge setup
echo "----------------------------------------------------------------"
echo "Commence Dockge Setup"
echo "----------------------------------------------------------------"
mkdir -p /opt/{dockge,stacks}
wget -q -O /opt/dockge/compose.yaml https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/DockerCompose/Dockge/compose.yaml
cd /opt/dockge
docker compose up -d
echo "----------------------------------------------------------------"
echo "Dockge GUI, https://your_server_ip:5001"
echo "----------------------------------------------------------------"


# Portainer setup
echo "----------------------------------------------------------------"
echo "Commence Portainer Setup"
echo "----------------------------------------------------------------"
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ee:latest
echo "----------------------------------------------------------------"
echo "Portainer Interface is reachable at port:9443"
echo "----------------------------------------------------------------"


# Rebooting Now: sudo reboot
