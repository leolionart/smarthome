# Cài đặt HomeBridge - Đưa thiết bị lên HomeKit

## Script cài đặt tự động

Tôi sẽ sử dụng stack này để deploy cùng lúc 2 service Homebridge và Scryted Camera qua Portainer `https://github.com/leolionart/smarthome/blob/main/HomeKit/hb%26scryted-stack.yml`

> Để tránh phải cấu hình lại thủ công tôi khuyến khích bạn lưu trữ cấu hình của những hệ thống này vào trên ổ cứng gắn ngoài hoặc tạo file backup để dễ dàng restore

## Cấu hình HomeBridge

1. Truy cập homebridge
2. Tạo thông tin đăng nhập
3. Cấu hình plugin

![](https://egg.d.pr/i/m0rl5o.jpg)&#x20;

Sau khi thiết lập xong và đăng nhập vào Homebridge, đây là các plugin tôi sử dụng để đưa các thiết bị lên nền tảng HomeKit. Tuỳ theo nhu cầu sẽ cài thêm các plugin, không nên cài nhiều chiếm tài nguyên

<table data-full-width="true"><thead><tr><th width="238.66666666666669">Tên plugin</th><th width="335">Nhiệm vụ</th><th>Ghi chú</th></tr></thead><tbody><tr><td><strong>Homebridge Broadlink RM Pro</strong></td><td>Điều khiển các thiết bị đã học remote trên Homebridge. Kết nối thiết bị thuộc hệ sinh thái Broadlink (Điều hoà, TV...điều khiển hồng ngoại)</td><td><a href="https://broadlink.kiwicam.nz/">Hướng dẫn cấu hình chi tiết</a></td></tr><tr><td><strong>eWeLink</strong></td><td>Tích hợp thiết bị eWelink</td><td><a data-mention href="apple-homekit-cho-thiet-bi-khong-ho-tro/mo-cua-cuon-bang-ewelink-sonoff-4ch-pro.md">mo-cua-cuon-bang-ewelink-sonoff-4ch-pro.md</a></td></tr><tr><td><strong>TuyaWebPlatform</strong></td><td>Tích hợp thiết bị Tuya, SmartLife</td><td></td></tr><tr><td><strong>Homebridge Miot</strong></td><td>Kết nối thiết bị thuộc hệ sinh thái Xiaomi (Máy lọc không khí, đèn thông minh)</td><td></td></tr><tr><td><strong>Homebridge Samsung Tizen</strong></td><td>Điều khiển TV samsung như cách dùng Apple TV</td><td><a data-mention href="apple-homekit-cho-thiet-bi-khong-ho-tro/dua-samsungtv-len-apple-home.md">dua-samsungtv-len-apple-home.md</a></td></tr><tr><td><strong>Weather Plus</strong></td><td>Khi nào trời mưa, nhiệt độ ngoài trời, chỉ số UV... Khỏi cần cảm biến</td><td></td></tr><tr><td><strong>Homebridge Simple Wled</strong></td><td>Mấy cái đèn đồng bộ ambilight theo hình ảnh TV, theo nhạc nhưng vẫn muốn bật tắt được trên homeKit</td><td></td></tr><tr><td><strong>Homebridge WoL</strong></td><td>Bật máy tính Window từ xa</td><td></td></tr><tr><td><strong>Google Smart Home</strong></td><td>Điều khiển từ Android </td><td>Dễ xem lại logs</td></tr><tr><td><strong>Homebridge Zigbee2MQTT</strong></td><td>Phục vụ giao tiếp với HUB Zigbee và NodeRED</td><td><a data-mention href="mot-hub-ket-noi-duoc-toan-bo-thiet-bi-zigbee-cua-tat-ca-cac-hang.md">mot-hub-ket-noi-duoc-toan-bo-thiet-bi-zigbee-cua-tat-ca-cac-hang.md</a></td></tr><tr><td><strong>AdGuard Home</strong></td><td>Nút bật tắt chức năng chặn quảng cáo</td><td><a data-mention href="broken-reference">Broken link</a></td></tr></tbody></table>

## Cấu hình trên Apple Home

1. Mở ứng dụng Home, chọn thêm qua mã QR
2. Tiến hành quét mã trên HomeBridge để tiến hành thêm
