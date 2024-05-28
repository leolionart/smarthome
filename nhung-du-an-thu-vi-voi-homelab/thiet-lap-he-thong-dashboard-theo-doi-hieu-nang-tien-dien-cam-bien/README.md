---
description: >-
  Đã đầu tư vào smarthome chắc chắn bạn sẽ có rất nhiều dữ liệu được thu thập
  lại. Tuy nhiên không phải lúc nào bạn cũng dễ dàng xem lại chúng (nằm ở nhiều
  app, lịch sử lưu ngắn, khó sử dụng...)
cover: ../../.gitbook/assets/System Monitoring Setup.png
coverY: 0
---

# Thiết lập hệ thống dashboard (theo dõi hiệu năng, tiền điện, cảm biến)

## Dashboard theo dõi toàn bộ thông số quan trọng

![](https://egg.d.pr/i/zRDjAi.jpg)

* Mức sử dụng điện hiện tại đang như thế nào? Có ngày nào đang bất thường về lượng điện tiêu thụ
* Cảm biến nhiệt độ cho thấy thời gian trong ngày nhiệt độ tăng giảm ra sao (phục vụ các automation về tăng giảm nhiệt độ điều hoà và tắt bật thiết bị)
* Tỉ lệ bụi mịn trong không khí (nhà nuôi chó mèo nên cần biết khi nào cần tổng vệ sinh, hút bụi trên nệm các kiểu)
* Số lần kết nối mạng bị gặp trục trặc, hệ thống có đang gặp vấn đề về hiệu năng internet hay quá tải ở các HUB trung tâm hay không (do mình hay "ép xung" nên việc theo dõi để điều chỉnh môi trường sống cho tụi nó là điều quan trọng để bền bỉ)

## Theo dõi bằng widget & nhận thông báo trên IOS

{% hint style="info" %}
_Chỉ áp dụng để theo dõi hệ thống Homebrigde, các dịch vụ khác sẽ chỉ có thể kiểm tra trạng thái còn sống hay không qua dịch vụ ping vào service, mình không sử dụng vì giao diện xấu._
{% endhint %}

<div align="left">

<img src="https://egg.d.pr/i/kUYfiu.jpg" alt="" width="188">

</div>

Làm thế nào để biết khi nào cần cập nhật, hệ thống đang bị quá tải hay không, bị sụp nguồn hay không để tránh rơi vào tình trạng lúc cần thì k xài được

1. Cài app [Scriptable](https://scriptable.app/)
2. Tạo mới scripts
3. Sử dụng config: https://raw.githubusercontent.com/leolionart/smarthome/main/Monitoring/homebridgeStatusWidget.js
