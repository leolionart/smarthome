---
description: >-
  Khi sử dụng smarthome, số lượng thiết bị cần kết nối vào WiFi đồng thời sẽ lớn
  hơn nhiều + vị trí cần kết nối sẽ nhiều hơn. Lúc này cần sự đầu tư nghiêm túc
  vào các thiết bị mạng để hoạt động ổn định
cover: >-
  https://images.unsplash.com/photo-1516044734145-07ca8eef8731?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHw2fHxXaWZpfGVufDB8fHx8MTcxNjg4MzE0Mnww&ixlib=rb-4.0.3&q=85
coverY: -180
layout:
  cover:
    visible: true
    size: hero
  title:
    visible: true
  description:
    visible: true
  tableOfContents:
    visible: true
  outline:
    visible: true
  pagination:
    visible: true
---

# Vấn đề đối với Wi-Fi khi sử dụng smarthome

<figure><img src="../../.gitbook/assets/image (5).png" alt=""><figcaption><p>Hệ thống Mesh để phủ sóng Wi-Fi khắp căn nhà</p></figcaption></figure>

## Cấu hình mạng hiện tại mình đang sử dụng

Số lượng thiết bị kết nối đồng thời của mình lên tới >50 thiết bị

{% hint style="warning" %}
Với nhu cầu handle số lượng thiết bị đồng thời lớn cũng như cân bằng tải nên mình sử dụng riêng 1 thiết bị cho việc quay PPPoE, nhà mạng thông thường cung cấp thiết bị tất cả trong 1 (vừa quay PPPoE, cấp DHCP, Phát WiFi). Bạn cũng có thể nâng cấp AP phát WiFi trước để phủ sóng mạng toàn nhà qua giao thức mesh. Nếu vẫn chưa ổn mới cần tới phương án hiện tại của mình
{% endhint %}

* AP phát wifi: **Ruijie EW1200G-PRO** (6 cái)
* Converter từ Quang to LAN: **FPT Converter, Viettel Router** (kêu nhà mạng cấp và cấu hình)
* Router quay PPPoE & cấp DHCP: **Mikrotik 750Gr3**
* Chia cổng LAN: Switch cỏ 1Gps

{% hint style="info" %}
Mình sử dụng 2 line cáp quang để đảm bảo kết nối ổn định cho công việc. Thà lắp 2 nhà mạng còn hơn nâng giá cao cho 1 nhà mạng. Sử dụng Mikrotik cân bằng tải để chia lưu lượng sử dụng đều cả 2 line
{% endhint %}

## Khi nào thì cần nâng cấp thiết bị mạng

1. Toàn bộ thiết bị trong nhà bị chậm đều
2. Thi thoảng các device bị ngắt kết nối với WiFi mặc dù không làm gì
3. Khi thì mạng nhanh khi thì chậm
4. Router tự động khởi động lại nhiều lần trong ngày

## Các vấn đề thường gặp với Network

* Mik brigde LAN rất kém, tránh cắm nhiều cổng dễ loop package. Mua thêm Switch để mở rộng kết nối qua nhiều dây LAN thay vì cố tận dụng các cổng LAN hiện tại
* Hard reset Mik cần giữ cả nút Mode cả reset thì mới truy cập được theo hướng dẫn trên trang chủ
* Muốn mở port IP động phải set thêm Address list trong firewall. Nhớ gọi lên tổng đài yêu cầu mở port, mặc định nhà mạng sẽ đóng
* Trên PC nếu tắt firewall sẽ không kết nối để check được trạng thái PC, không Wake on LAN được
