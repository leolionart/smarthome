#!/bin/bash

# Chạy toàn bộ script với quyền sudo
sudo bash <<EOF

# Dockge setup
echo "----------------------------------------------------------------"
echo "Commence Dockge Setup"
echo "----------------------------------------------------------------"
mkdir -p /opt/{dockge,stacks}
wget -q -O /opt/dockge/compose.yaml https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/Zigbee2MQTT/dockge/compose.yaml
cd /opt/dockge
docker compose up -d
echo "----------------------------------------------------------------"
echo "Dockge GUI, https://your_server_ip:5001"
echo "----------------------------------------------------------------"

# MQTT Install
echo "----------------------------------------------------------------"
echo "Commence MQTT Setup"
echo "----------------------------------------------------------------"
mkdir -p /opt/stacks/mosquitto
mkdir -p /opt/stacks/mosquitto/config/
mkdir -p /opt/stacks/mosquitto/data/
wget -q -O /opt/stacks/mosquitto/compose.yaml https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/MQTT/compose.yaml
cd /opt/stacks/mosquitto
docker compose up -d
echo "----------------------------------------------------------------"
echo "MQTT Setup Completed"
echo "----------------------------------------------------------------"

# Z2M setup
echo "----------------------------------------------------------------"
echo "Commence Zigbee2MQTT Setup"
echo "----------------------------------------------------------------"
mkdir -p /opt/stacks/z2m
cd /opt/stacks/z2m
wget https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/Zigbee2MQTT/configuration.yaml -P data
wget -q -O compose.yaml https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/Zigbee2MQTT/compose.yaml
docker compose -f compose.yaml up -d
echo "----------------------------------------------------------------"
echo "Z2M Interface is reachable at  https://your_server_ip:8080"
echo "----------------------------------------------------------------"

# Kiểm tra xem các dịch vụ đã được cài đặt và chạy thành công hay chưa
if [ $? -eq 0 ]; then
  echo "----------------------------------------------------------------"
  echo "ALL PACKAGES INSTALLED WITH NO ERRORS"
  echo "----------------------------------------------------------------"
else
  echo "----------------------------------------------------------------"
  echo "ERROR OCCURRED DURING INSTALLATION"
  echo "----------------------------------------------------------------"
fi

# Rebooting Now
#reboot

EOF