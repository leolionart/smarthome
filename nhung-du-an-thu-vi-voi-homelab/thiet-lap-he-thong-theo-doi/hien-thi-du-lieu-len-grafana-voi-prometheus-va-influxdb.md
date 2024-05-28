# Hiển thị dữ liệu lên Grafana với Prometheus và InfluxDB

Tôi muốn theo dõi trực quan các dữ liệu thu thập từ cảm biến, tốc độ mạng hiện tại, tiền điện sử dụng hàng tháng. Tập trung tất cả trên một dashboard

<table><thead><tr><th width="175">Serices</th><th>Description</th></tr></thead><tbody><tr><td>Node-RED</td><td>Thiết lập các automation flows, tuỳ biến thêm kịch bản mới</td></tr><tr><td>InfluxDB</td><td>Chứa dữ liệu log từ Node-RED gửi về</td></tr><tr><td>Prometheus</td><td>Đóng vai trò trigger để collect dữ liệu từ các service lấy dữ liệu. Lưu tạm trên RAM</td></tr><tr><td>Node_exporter</td><td>Đọc các chỉ số hệ thống linux (CPU, RAM, Nhiệt độ...)</td></tr><tr><td>SNMP_exporter</td><td>Đọc các chỉ số trên Mikrotik (tốc độ mạng, số thiết bị đang kết nối)</td></tr><tr><td>Grafana</td><td>Đóng vai trò visually các dữ liệu trên dưới dạng dashboard</td></tr></tbody></table>

**NodeRED-Flow**

1. Cài thêm các Palette sau:
   * node-red-contrib-homebridge-automation
   * node-red-contrib-influxdb
2. Import Flow lấy log sensors từ Homebridge: https://raw.githubusercontent.com/leolionart/smarthome/main/Monitoring/node-red-flow.json ![](https://egg.d.pr/i/FbA9oe.jpg)

## Cài đặt

## Cấu hình
