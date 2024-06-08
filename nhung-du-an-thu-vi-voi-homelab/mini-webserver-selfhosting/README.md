---
description: >-
  Làm thế nào để tự xây dựng 1 cloud server/web server tại nhà. Đâu là cách làm
  tối ưu nhất?
cover: >-
  https://images.unsplash.com/flagged/photo-1579274216947-86eaa4b00475?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHw1fHx3ZWIlMjBzZXJ2ZXJ8ZW58MHx8fHwxNzE2OTY3OTcwfDA&ixlib=rb-4.0.3&q=85
coverY: 0
---

# Mini Webserver - Selfhosting

<figure><img src="../../.gitbook/assets/image (10).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Đây được coi như một bài thực hành để mình tìm hiểu về network và phần cứng máy tính
{% endhint %}

## Mục tiêu đề ra

1. Làm thế nào để có thể tận dụng tối đa sức mạnh phần cứng của máy tính chạy server
2. Cần kiểm soát các dịch vụ chạy trên server này một cách độc lập. Tránh 1 dịch vụ gây quá tải toàn bộ hệ thống máy chủ
3. Làm thế nào để an toàn di chuyển dữ liệu, bảo trì các máy chủ với zero downtime
4. Backup, restore server một cách dễ dàng. Khôi phục lại hệ điều hành nhanh chóng khi xảy ra lỗi trên toàn hệ thống

Với những mục tiêu trên ban đầu mình đã thử qua cài linux, cài fake synology... tuy nhiên vấn đề luôn là tài nguyên bị chiếm dụng không kiểm soát nên có những lúc không xài gì vẫn chạy hết công suất. \
\
Đương nhiên vẫn có phương án giới hạn trên từng container, nhưng khó scale up khi cần

<details>

<summary>Phương án giới hạn dung lượng phần cứng trên Docker Compose</summary>

Thêm 2 dòng sau vào stack khi deploy container để đặt giới hạn về phần cứng

```
service:
  image: nginx
  mem_limit: 512m
  mem_reservation: 128M
  cpus: 1
  ports:
    - "80:80"
```

</details>

Phương án cuối cùng mình tìm thấy là lựa chọn một nền tảng ảo hoá để giả lập các hệ điều hành khác nhau lên trên một phần cứng. Dễ dàng thay thế và mở rộng phần cứng không gây downtime

{% hint style="success" %}
Và đó chính là **PROXMOX**
{% endhint %}

Loạt bài dưới dây mình sẽ hướng dẫn dung quanh Proxmox
