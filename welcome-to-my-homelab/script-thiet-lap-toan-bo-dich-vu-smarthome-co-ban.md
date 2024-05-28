---
description: >-
  Cài đi cài lại nhiều quá nên tôi tìm giải pháp để tự động hoá tối đa việc cài
  đặt để đỡ mất thời gian
cover: >-
  https://images.unsplash.com/photo-1640552435388-a54879e72b28?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHw1fHxMaW51eHxlbnwwfHx8fDE3MTY3OTg0OTh8MA&ixlib=rb-4.0.3&q=85
coverY: 0
---

# Thiết lập nhanh toàn bộ dịch vụ bằng 1 câu lệnh duy nhất

<div align="center">

<img src="https://user-images.githubusercontent.com/3979615/78016493-9b89a800-7396-11ea-9442-414ad9ffcdf2.png" alt="" width="250">

</div>

## Thiết lập các ứng dụng cơ bản với Docker Compose

Kết nối ssh qua Terminal và thiết hành past script này vào và ngồi đợi

```
curl -sk https://raw.githubusercontent.com/leolionart/smarthome/main/HomeLab_basic_setup.sh | sudo bash -
```

### Chỉ thiết lập môi trường, các tiện ích khác thực hiện cài đặt thủ công bằng Stack qua Portainer Web

<table><thead><tr><th width="145">Serices</th><th>Description</th></tr></thead><tbody><tr><td>Docker</td><td>Dễ dàng cài đặt các dịch vụ được đóng gói sẵn</td></tr><tr><td>Portainer</td><td>Quản lý trực quan trên nền tảng web</td></tr><tr><td>Watchtower</td><td>Tự cập nhật phiên bản cho các dịch vụ trong portainer</td></tr><tr><td>Homebridge</td><td>Kết nối thiết bị vào HomeKit</td></tr><tr><td>Scryted</td><td>Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home</td></tr></tbody></table>

## Thiết lập nâng cao tất cả dịch vụ

Kết nối ssh qua Terminal và thiết hành past script này vào và ngồi đợi

```
Đang lập trình script mới
```

![](https://egg.d.pr/i/TuTrWz.jpg)

### Chứa toàn bộ dịch vụ cho HomeKit và giải trí

<table><thead><tr><th width="182">Serices</th><th>Description</th></tr></thead><tbody><tr><td>Docker</td><td>Dễ dàng cài đặt các dịch vụ được đóng gói sẵn</td></tr><tr><td>Portainer</td><td>Quản lý trực quan trên nền tảng web</td></tr><tr><td>Watchtower</td><td>Tự cập nhật phiên bản cho các dịch vụ trong portainer</td></tr><tr><td>Homebridge</td><td>Kết nối thiết bị vào HomeKit</td></tr><tr><td>Scryted</td><td>Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home</td></tr><tr><td>Plex</td><td>Tự tạo server xem phim ở nhà</td></tr><tr><td>qBittorrent</td><td>Tải phim</td></tr><tr><td>Radarr</td><td>Quản lí phim lẻ</td></tr><tr><td>Sonarr</td><td>Quản lí phim bộ</td></tr><tr><td>Prowlarr</td><td>Sẽ tìm nguồn tải phim cho 2 cái trên</td></tr><tr><td>Bazarr</td><td>Tự động tải sub việt, sub anh theo tên phim</td></tr><tr><td>Heimdall</td><td>Shortcut truy cập các ứng dụng chứ nhiều port quá không nhớ</td></tr><tr><td>Prometheus</td><td>Đóng vai trò trigger để collect dữ liệu từ các service lấy dữ liệu. Lưu tạm trên RAM</td></tr><tr><td>Node-RED</td><td>Thiết lập các automation flows, tuỳ biến thêm kịch bản mới</td></tr><tr><td>InfluxDB</td><td>Chứa dữ liệu log từ Node-RED gửi về</td></tr><tr><td>Node_exporter</td><td>Đọc các chỉ số hệ thống linux (CPU, RAM, Nhiệt độ...)</td></tr><tr><td>SNMP_exporter</td><td>Đọc các chỉ số trên Mikrotik (tốc độ mạng, số thiết bị đang kết nối)</td></tr><tr><td>Grafana</td><td>Đóng vai trò visually các dữ liệu trên dưới dạng dashboard</td></tr></tbody></table>
