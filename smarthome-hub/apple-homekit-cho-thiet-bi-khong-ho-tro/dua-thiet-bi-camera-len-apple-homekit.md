# Đưa thiết bị, camera lên Apple Homekit

| Serices    | Description                                                 |
| ---------- | ----------------------------------------------------------- |
| Homebridge | Kết nối thiết bị vào HomeKit                                |
| Scryted    | Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home |

## Cài đặt

Tôi sẽ sử dụng stack này để deploy cùng lúc 2 service qua Portainer `https://github.com/leolionart/smarthome/blob/main/HomeKit/hb%26scryted-stack.yml`

> Để tránh phải cấu hình lại thủ công tôi khuyến khích bạn lưu trữ cấu hình của những hệ thống này vào trên ổ cứng gắn ngoài hoặc tạo file backup để dễ dàng restore

## Thiết lập HomeBridge

![](https://egg.d.pr/i/m0rl5o.jpg) Sau khi thiết lập xong và đăng nhập vào Homebridge, đây là các plugin tôi sử dụng để đưa các thiết bị lên nền tảng HomeKit. Tuỳ theo nhu cầu sẽ cài thêm các plugin, không nên cài nhiều chiếm tài nguyên

| Plugins      | Description                                                                                                         |
| ------------ | ------------------------------------------------------------------------------------------------------------------- |
| Tuya         | Kết nối thiết bị thuộc hệ sinh thái Tuya                                                                            |
| Broadlink RM | Kết nối thiết bị thuộc hệ sinh thái Broadlink (Điều hoà, TV...điều khiển hồng ngoại)                                |
| Ewelink      | Kết nối thiết bị thuộc hệ sinh thái Ewelink/Sonoff (Cho phép giả lập nhiều loại thiết bị)                           |
| Miot         | Kết nối thiết bị thuộc hệ sinh thái Xiaomi (Máy lọc không khí, đèn thông minh)                                      |
| Google Smart | Bố mẹ xài Android điều khiển qua Google tôi coi được logs tập trung ở Homebridge                                    |
| Samsum Tizen | Kết nối TV để điều khiển như Apple TV. [Hướng dẫn chi tiết](https://github.com/leolionart/smarthome/wiki/SamSungTV) |
| Wled         | Mấy cái đèn đồng bộ theo hình ảnh TV, theo nhạc nhưng vẫn muốn bật tắt được trên homeKit                            |
| Weather Plus | Thay vì gắn cảm biến môi trường dùng cái này để biết khu vực hiện tại có mưa không                                  |

## Thiết lập Scryted

Sau khi đăng nhập xong thực hiện cài 2 plugin

* ONVIF Camera Plugin
* HomeKit

### Dùng plugin ONVIF để discover camera

1. Đăng nhập vào camera theo thông tin trong label của camera
2. Add to HomeKit bằng mã QR được plugin cung cấp trên từng camera
