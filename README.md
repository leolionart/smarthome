# Xây dựng Home LAB nhu cầu cơ bản
![](https://egg.d.pr/i/TuTrWz.jpg)
Với niềm yêu thích công nghệ, luôn tìm kiếm giải pháp xoay quanh việc tối ưu các vấn đề thường gặp. Tôi dành thời gian cho dự án cá nhân này để học thêm các kỹ năng liên quan tới lập trình và các công nghệ phổ biến. Hiểu cách các service vận hành cùng với nhau, cách xây dựng cấu trúc dữ liệu, cách tối ưu hoá phần cứng...


**Thông tin cấu hình thiết bị sử dụng trong HomeLABS**
| BananaPI | Cấu hình 
|--------------|-------
| CPU | 4 CPU
| RAM | 4G  
| ROM | 32G
| EMMC | 16G

## Đưa thiết bị lên HomeKit

Không một hãng nào có tất cả thiết bị đáp ứng cả 3 tiêu chí rẻ, ổn định, bền bỉ. Mục tiêu của dự án là đưa thiết bị IOT của bất cứ hãng nào lên Apple HomeKit và hoạt động một cách ổn định với chi phí thấp nhất.

<br><img src="https://egg.d.pr/i/IBIEzi.jpg" width="200">

| Serices | Description
|--------------|-------
| Docker | Dễ dàng cài đặt các dịch vụ được đóng gói sẵn
| Portainer | Quản lý trực quan trên nền tảng web  
| Watchtower |  Tự cập nhật phiên bản cho các dịch vụ trong portainer
| Homebridge | Kết nối thiết bị vào HomeKit
| Scryted | Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home


## Hệ thống giải trí miễn phí
![](https://egg.d.pr/i/KB4YQS.jpg)
>Bạn yêu thích nhiều series phim hay chiếu trên nhiều nền tảng khác nhau, mong muốn có thể xem sớm nhất khi được phát hành kể cả là bản CAM. Tôi thiết lập một hệ thống với nhiệm vụ
- Tìm kiếm trên internet về thông tin bộ phim tôi muốn
- Tự tìm link và tải về bằng torrent khi xuất hiện
- Tự nâng cấp bản CAM lên bản chất lượng cao hơn nếu phim hay và tôi muốn giữ lại xem tiếp
- Tự tìm Eng và Việt Sub cho các phim này để khi tôi xem thì có sẵn sub chất lượng
- Thêm phim vào danh sách theo dõi dễ dàng: Xem trailer thích có thể vào Plex add to watchlist là xong

| Serices | Description
|--------------|-------
| Plex | Tự tạo server xem phim ở nhà
| qBittorrent | Tải phim
| Radarr | Quản lí phim lẻ
| Sonarr | Quản lí phim bộ
| Prowlarr | Sẽ tìm nguồn tải phim cho 2 cái trên
| Bazarr | Tự động tải sub việt, sub anh theo tên phim
| Heimdall | Shortcut truy cập các ứng dụng chứ nhiều port quá không nhớ

# HUB backup - Zigbee, Monitoring

**Thông tin cấu hình thiết bị sử dụng trong HomeLABS**
| RaspberryPI | Cấu hình 
|--------------|-------
| CPU | 4 CPU
| RAM | 1G  
| ROM | 16G  

## Home HUB dự phòng & Zigbee HUB
Trong trường hợp hệ thống chính gặp sự cố vẫn cần hệ thống khác khởi động được lên ngay để không làm dán đoạn các hoạt động như mở cửa garage hay hệ thống báo động trong nhà

| Serices | Description
|--------------|-------
| Docker | Dễ dàng cài đặt các dịch vụ được đóng gói sẵn
| Portainer | Quản lý trực quan trên nền tảng web
| Hombridge | Đưa các thiết bị quan trọng vào một Home khác
| Mqtt Brocker | Nhận event gửi từ các service cần vận hành qua cách này
| Zigbee to Mqtt | Trigger event gửi vào MQTT service

## Theo dõi hệ thống
![](https://egg.d.pr/i/zRDjAi.jpg)
Theo đõi lượng điện tiêu thụ trong nhà, nhiệt độ thu thập từ cảm biến về độ chênh lệch nhiệt độ trong phòng và ngoài trời để tắt điều hoà đúng lúc, hạn chế sử dụng điện không hiệu quả

| Serices | Description
|--------------|-------
| Node-RED | Thiết lập các automation flows, tuỳ biến thêm kịch bản mới
| InfluxDB | Chứa dữ liệu log từ Node-RED gửi về
| Prometheus | Đóng vai trò trigger để collect dữ liệu từ các service lấy dữ liệu. Lưu tạm trên RAM
| Node_exporter | Đọc các chỉ số hệ thống linux (CPU, RAM, Nhiệt độ...)
| SNMP_exporter | Đọc các chỉ số trên Mikrotik (tốc độ mạng, số thiết bị đang kết nối)
| Grafana | Đóng vai trò visually các dữ liệu trên dưới dạng dashboard
