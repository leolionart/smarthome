# MQTT Install
echo "----------------------------------------------------------------"
echo "Commence MQTT Setup"
echo "----------------------------------------------------------------"
sudo mkdir /opt/{dockge,stacks}/mosquitto
sudo mkdir /opt/{dockge,stacks}/mosquitto/config/
sudo mkdir /opt/{dockge,stacks}/mosquitto/data/
sudo wget https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/Zigbee2MQTT/mosquitto.conf -P /opt/{dockge,stacks}/mosquitto
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
wget https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/Zigbee2MQTT/configuration.yaml -P data
echo " "
sudo docker run --name zigbee2mqtt --device=/dev/ttyUSB0 --net host --restart unless-stopped -v $(pwd)/data:/app/data -v /run/udev:/run/udev:ro -e TZ=Asia/Ho_Chi_Minh koenkk/zigbee2mqtt
echo "----------------------------------------------------------------"
echo "Z2M Interface is reachable at homebridge.local:8081"
echo " "
echo " "
echo " "
echo "----------------------------------------------------------------"
echo "ALL PACKAGES INSTALLED WITH NO ERRORS"
echo "----------------------------------------------------------------"
echo " "
echo " "
echo " "
echo "Rebooting Now"
#sudo reboot
