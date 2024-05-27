---
description: Làm HUB Zigbee đa năng
---

# Một HUB kết nối được toàn bộ thiết bị Zigbee của tất cả các hãng

### Chuẩn bị

* USB Zigbee
*

### PI-III sử dụng làm HUB Zigbee đa năng

Thiết lập bằng homebridge firmware qua Raspberry Pi Imager để đơn giản quá trình setup Hoạt động với toàn bộ thiết bị sử dụng sóng Zigbee không kể hãng nào. Lệnh cài đặt tự động để chạy các dịch vụ liên quan

`curl -sk https://raw.githubusercontent.com/leolionart/smarthome/main/Z2M/ZigbeeHub.sh | sudo bash -`

> Copy cậu lệnh trên và paste vào Terminal để thực hiện cài và cấu hình hàng loạt các dịch vụ\
> \
> ![](https://egg.d.pr/i/IBIEzi.jpg)\
> \
> Ở đây tôi sử dụng một RaspberryPI cũ gắn thiết bị bắt sóng Zigbee và đặt ở gần khu vực cảm biến bên thứ 3 cần đưa lên homebridge. Thiết bị này cấu hình yếu nên tôi không đưa nhiều chức năng lên, chỉ phục vụ làm hệ thống khởi động dự phòng khi HUB chính có vấn đề.

**Các dịch vụ đi kèm bao gồm**

| Serices        | Description                                             |
| -------------- | ------------------------------------------------------- |
| Docker         | Dễ dàng cài đặt các dịch vụ được đóng gói sẵn           |
| Portainer      | Quản lý trực quan trên nền tảng web                     |
| Hombridge      | Đưa các thiết bị quan trọng vào một Home khác           |
| Mqtt Brocker   | Nhận event gửi từ các service cần vận hành qua cách này |
| Zigbee to Mqtt | Trigger event gửi vào MQTT service                      |

Lưu ý: Cần USB Dongle để bắt sóng Zigbee. [Hướng dẫn chi tiết tham khảo của bác Mr. Old](https://youtu.be/eTe0UU9oxPE?si=Pccp5agdG\_qfdiX8)

### Cấu hình thủ công

Trong trường hợp bị đổi địa chỉ IP hoặc cấu hình trên chưa khớp

```
ls
cd data
ls
sudo nano /home/pi/data/configuration.yaml
```

#### Kiểm tra cổng đang cắm dongle

`ls -l /dev/serial/by-id`
