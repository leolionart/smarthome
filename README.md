---
description: >-
  Flex về hệ thống smarthome và tiện ích mình tự xây dựng từ 2022 tới hiện tại,
  qua nhiều cải tiến mình quyết định chia sẻ lại để các bạn có một lộ trình chơi
  đồ phù hợp
---

# Welcome to my HomeLAB

## Xây dựng Home LAB nhu cầu cơ bản

<figure><img src="https://egg.d.pr/i/TuTrWz.jpg" alt=""><figcaption></figcaption></figure>

Với niềm yêu thích công nghệ, luôn tìm kiếm giải pháp xoay quanh việc tối ưu các vấn đề thường gặp. Tôi dành thời gian cho dự án cá nhân này để học thêm các kỹ năng liên quan tới lập trình và các công nghệ phổ biến. Hiểu cách các service vận hành cùng với nhau, cách xây dựng cấu trúc dữ liệu, cách tối ưu hoá phần cứng...

**Thông tin cấu hình thiết bị sử dụng trong HomeLABS**

| BananaPI | Cấu hình |
| -------- | -------- |
| CPU      | 4 CPU    |
| RAM      | 4G       |
| ROM      | 32G      |
| EMMC     | 16G      |

### Đưa thiết bị lên HomeKit

Không một hãng nào có tất cả thiết bị đáp ứng cả 3 tiêu chí rẻ, ổn định, bền bỉ. Mục tiêu của dự án là đưa thiết bị IOT của bất cứ hãng nào lên Apple HomeKit và hoạt động một cách ổn định với chi phí thấp nhất.

<div align="left">

<figure><img src="https://egg.d.pr/i/IBIEzi.jpg" alt="" width="188"><figcaption></figcaption></figure>

</div>

<table data-view="cards"><thead><tr><th>Serices</th><th>Description</th></tr></thead><tbody><tr><td>Docker</td><td>Dễ dàng cài đặt các dịch vụ được đóng gói sẵn</td></tr><tr><td>Portainer</td><td>Quản lý trực quan trên nền tảng web</td></tr><tr><td>Watchtower</td><td>Tự cập nhật phiên bản cho các dịch vụ trong portainer</td></tr><tr><td>Homebridge</td><td>Kết nối thiết bị vào HomeKit</td></tr><tr><td>Scryted</td><td>Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home</td></tr></tbody></table>

### Hệ thống giải trí miễn phí

![](https://egg.d.pr/i/KB4YQS.jpg)

> Bạn yêu thích nhiều series phim hay chiếu trên nhiều nền tảng khác nhau, mong muốn có thể xem sớm nhất khi được phát hành kể cả là bản CAM. Tôi thiết lập một hệ thống với nhiệm vụ

* Tìm kiếm trên internet về thông tin bộ phim tôi muốn
* Tự tìm link và tải về bằng torrent khi xuất hiện
* Tự nâng cấp bản CAM lên bản chất lượng cao hơn nếu phim hay và tôi muốn giữ lại xem tiếp
* Tự tìm Eng và Việt Sub cho các phim này để khi tôi xem thì có sẵn sub chất lượng
* Thêm phim vào danh sách theo dõi dễ dàng: Xem trailer thích có thể vào Plex add to watchlist là xong

<table data-view="cards"><thead><tr><th>Service</th><th>Description</th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td>Plex</td><td>Tự tạo server xem phim ở nhà (hoặc từ xa nếu muốn)</td><td><a href=".gitbook/assets/image (7).png">image (7).png</a></td></tr><tr><td>qBittorrent</td><td>Tải phim</td><td><a href=".gitbook/assets/image (4).png">image (4).png</a></td></tr><tr><td>Radarr</td><td>Quản lí phim lẻ</td><td><a href=".gitbook/assets/image (2).png">image (2).png</a></td></tr><tr><td>Sonarr</td><td>Quản lí phim bộ</td><td><a href=".gitbook/assets/image (1).png">image (1).png</a></td></tr><tr><td>Prowlarr</td><td>Sẽ tìm nguồn tải phim cho 2 cái trên</td><td><a href=".gitbook/assets/image (6).png">image (6).png</a></td></tr><tr><td>Bazarr</td><td>Tự động tải sub việt, sub anh theo tên phim</td><td><a href=".gitbook/assets/image (5).png">image (5).png</a></td></tr></tbody></table>

## HUB backup - Zigbee, Monitoring

**Thông tin cấu hình thiết bị sử dụng trong HomeLABS**

<table><thead><tr><th width="156">RaspberryPI</th><th>Cấu hình</th></tr></thead><tbody><tr><td>CPU</td><td>4 CPU</td></tr><tr><td>RAM</td><td>1G</td></tr><tr><td>ROM</td><td>16G</td></tr></tbody></table>

### Home HUB dự phòng & Zigbee HUB

Trong trường hợp hệ thống chính gặp sự cố vẫn cần hệ thống khác khởi động được lên ngay để không làm dán đoạn các hoạt động như mở cửa garage hay hệ thống báo động trong nhà.

<table data-view="cards"><thead><tr><th>Serices</th><th>Description</th></tr></thead><tbody><tr><td>Docker</td><td>Dễ dàng cài đặt các dịch vụ được đóng gói sẵn</td></tr><tr><td>Portainer</td><td>Quản lý trực quan trên nền tảng web</td></tr><tr><td>Hombridge</td><td>Đưa các thiết bị quan trọng vào một Home khác</td></tr><tr><td>Mqtt Brocker</td><td>Nhận event gửi từ các service cần vận hành qua cách này</td></tr><tr><td>Zigbee to Mqtt</td><td>Trigger event gửi vào MQTT service</td></tr></tbody></table>

### Theo dõi hệ thống

<figure><img src="https://egg.d.pr/i/zRDjAi.jpg" alt=""><figcaption></figcaption></figure>

Theo đõi lượng điện tiêu thụ trong nhà, nhiệt độ thu thập từ cảm biến về độ chênh lệch nhiệt độ trong phòng và ngoài trời để tắt điều hoà đúng lúc, hạn chế sử dụng điện không hiệu quả.

<table data-view="cards"><thead><tr><th>Serices</th><th>Description</th></tr></thead><tbody><tr><td>Node-RED</td><td>Thiết lập các automation flows, tuỳ biến thêm kịch bản mới</td></tr><tr><td>InfluxDB</td><td>Chứa dữ liệu log từ Node-RED gửi về</td></tr><tr><td>Prometheus</td><td>Đóng vai trò trigger để collect dữ liệu từ các service lấy dữ liệu. Lưu tạm trên RAM</td></tr><tr><td>Node_exporter</td><td>Đọc các chỉ số hệ thống linux (CPU, RAM, Nhiệt độ...)</td></tr><tr><td>SNMP_exporter</td><td>Đọc các chỉ số trên Mikrotik (tốc độ mạng, số thiết bị đang kết nối)</td></tr><tr><td>Grafana</td><td>Đóng vai trò visually các dữ liệu trên dưới dạng dashboard</td></tr></tbody></table>
