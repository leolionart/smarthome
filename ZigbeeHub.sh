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
# Portainer setup
echo "----------------------------------------------------------------"
echo "Commence Portainer Setup"
echo "----------------------------------------------------------------"
sudo docker run -d -p 9000:9000 --name=portainer --restart unless-stopped -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
echo "----------------------------------------------------------------"
echo "Portainer Interface is reachable at homebridge.local:9000"
echo "----------------------------------------------------------------"
echo " "
echo " "
echo " "
# Watch Tower setup
echo "----------------------------------------------------------------"
echo "Commence Watch Tower Setup"
echo "----------------------------------------------------------------"
sudo docker run --name="watchtower" -d --restart unless-stopped -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower
echo "----------------------------------------------------------------"
echo "Watch Tower Setup Completed"
echo "----------------------------------------------------------------"
echo " "
echo " "
echo " "
# MQTT Install

# MQTT Install
echo "----------------------------------------------------------------"
echo "Commence MQTT Setup"
echo "----------------------------------------------------------------"
sudo mkdir mosquitto
sudo mkdir mosquitto/config/
sudo mkdir mosquitto/data/
sudo wget https://raw.githubusercontent.com/EddieDSuza/maxilife/main/mosquitto.conf -P /home/pi/mosquitto/config/
sudo docker run -it --name MQTT --restart unless-stopped --net=host -tid -p 1883:1883 -v $(pwd)/mosquitto:/mosquitto/ eclipse-mosquitto
echo "----------------------------------------------------------------"
echo "MQTT Setup Completed"
echo "----------------------------------------------------------------"
echo " "
echo " "
echo " "
# Z2M setup
echo "----------------------------------------------------------------"
echo "Commence Zigbee2MQTT Setup"
echo "----------------------------------------------------------------"
wget https://raw.githubusercontent.com/EddieDSuza/techwitheddie/main/configuration.yaml -P data
echo " "
sudo docker run --name zigbee2mqtt --device=/dev/ttyUSB0 --net host --restart unless-stopped -v $(pwd)/data:/app/data -v /run/udev:/run/udev:ro -e TZ=Asia/Saigon koenkk/zigbee2mqtt
echo "----------------------------------------------------------------"
echo "Z2M Interface is reachable at homebridge.local:8081"
