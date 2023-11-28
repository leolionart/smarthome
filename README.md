# Các bước thiết lập môi trường trên BananaPI (BPI M5)

1. Tải image, sử dụng phần mềm BalenaEther để nạp hệ điều hành vào thẻ nhớ
https://wiki.banana-pi.org/Getting_Started_with_M5/M2Pro#Install_Image_to_EMMC
2. Mở boot folder bằng Terminal, gõ lệch sau để tạo truy cập từ xa: touch ssh
3. Cắm thẻ nhớ và cấp nguồn cho BPi. Truy cập từ xa bằng terminal: ssh pi@192.168.2.151 Mật khẩu bananapi
4. Sử dụng công cụ cài hệ điều hành vào EMMC. Copy file img vào ổ cứng/usb và sử dụng nó để copy (đỡ phải tìm cách copy vào phân vùng hạn hẹp của SD cart). Các bước thực hiện dưới đây

## Setup Docker Compose và Portainer để tiếp tục setup các dịch vụ dưới đây
Sử dụng câu lệnh `curl -sk https://raw.githubusercontent.com/leolionart/smarthome/main/Docker_AIO_setup.sh | sudo bash -`

**Toàn bộ các dịch vụ được sử dụng trên HUB của tôi**
1. qBittorrent: Tải phim
2. Radarr: Quản lí phim lẻ
3. Sonarr: Quản lí phim bộ
4. Prowlarr: Sẽ tìm nguồn tải phim cho 2 cái trên
5. Bazarr: Tự động tải sub việt
6. Homebridge: Kết nối thiết bị vào Homkit
7. Scryted: Camera Homkit
8. Plex: Tự tạo server xem phim ở nhà
9. Watchtower: Tự cập nhật cho các dịch vụ trên
10. Heimdall: Shortcut truy cập tiện ích

> Các config liên quan tới dịch vụ trên đang được lưu trữ ở ổ cứng. Khi setup stack trên docker khai báo đúng volumn sẽ gọi đủ config lên (Restore bằng portainer sẽ có lại toàn bộ config)
> Folder chứa các config file: 

## Thiết lập hệ thống theo dõi Home LAB
https://egg.d.pr/i/zRDjAi

### Sử dụng Prometheus và InluxDB để show hiển thị dữ liệu bằng grafana
1. Promehteus: Chứa metrics trong RAM
2. Grafana: Dựng dashboard trực quan
3. SNMP_exporter: Đọc dữ liệu từ Mikrotik Router
4. Node-exporter: Đọc dữ liệu từ linux. Có thể dùng cadvisor có thể xem chi tiết hơn các node đang chiếm dụng tài nguyên
5. Node-RED: Xây dựng flow dữ liệu đưa vào InluxDB. Chi tiết các flow hữu ích

**NodeRED-Flow**
1. Cài thêm 
2. Flow lấy log sensors từ Homebridge: https://raw.githubusercontent.com/leolionart/smarthome/main/Monitoring/node-red-flow.json

### Theo dõi bằng widget & nhận thông báo
1. Cài Script
2. Sử dụng config: https://raw.githubusercontent.com/leolionart/smarthome/main/Monitoring/homebridgeStatusWidget.js

## Với PI-III sử dụng làm HUB Zigbee đa năng
Thiết lập bằng homebridge firmware qua Raspberry Pi Imager để đơn giản quá trình setup
Hoạt động với toàn bộ thiết bị sử dụng sóng Zigbee không kể hãng nào. Lệnh cài đặt tự động

`curl -sk https://raw.githubusercontent.com/leolionart/smarthome/main/Z2M/ZigbeeHub.sh | sudo bash -`

**Các dịch vụ đi kèm bao gồm**
1. Docker
2. Hombridge
3. Portainer
4. Mqtt Brocker
5. Zigbee to Mqtt
