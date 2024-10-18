---
description: >-
  Cài đi cài lại nhiều quá nên tôi tìm giải pháp để tự động hoá tối đa việc cài
  đặt để đỡ mất thời gian
cover: >-
  https://images.unsplash.com/photo-1640552435388-a54879e72b28?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHw1fHxMaW51eHxlbnwwfHx8fDE3MTY3OTg0OTh8MA&ixlib=rb-4.0.3&q=85
coverY: 0
---

# Script: Thiết lập toàn bộ dịch vụ smarthome cơ bản

<div align="center">

<img src="https://user-images.githubusercontent.com/3979615/78016493-9b89a800-7396-11ea-9442-414ad9ffcdf2.png" alt="" width="188">

</div>

## Thiết lập các ứng dụng cơ bản với Docker Compose

Kết nối ssh qua Terminal và thiết hành past script này vào và ngồi đợi

```
curl -sk https://raw.githubusercontent.com/leolionart/smarthome/main/HomeLab_basic_setup.sh | sudo bash -
```

### Dịch vụ được cài đặt

<table><thead><tr><th width="145">Serices</th><th>Description</th></tr></thead><tbody><tr><td>Docker</td><td>Dễ dàng cài đặt các dịch vụ được đóng gói sẵn</td></tr><tr><td>Portainer</td><td>Quản lý trực quan trên nền tảng web</td></tr><tr><td>Watchtower</td><td>Tự cập nhật phiên bản cho các dịch vụ trong portainer</td></tr><tr><td>Homebridge</td><td>Kết nối thiết bị vào HomeKit</td></tr><tr><td>Scryted</td><td>Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home</td></tr></tbody></table>

{% hint style="info" %}
Chứa config file ở ổ cứng gắn ngoài hoặc USB để không mất công cài đặt lại từ đầu
{% endhint %}

Trường hợp cần config thủ công, vui lòng follow các bài viết thuộc loạt bài HomeKIT [apple-homekit-cho-thiet-bi-khong-ho-tro](../cai-dat-install/apple-homekit-cho-thiet-bi-khong-ho-tro/ "mention")
