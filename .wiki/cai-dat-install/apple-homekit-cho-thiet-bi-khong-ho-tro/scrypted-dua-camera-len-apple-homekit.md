# Đưa camera lên Apple HomeKit

## Cài đặt

{% hint style="warning" %}
Nếu đã cài bằng script HomeBridge rồi thì bỏ qua bước này
{% endhint %}

Tôi sẽ sử dụng stack này để deploy cùng lúc 2 service Homebridge và Scryted Camera qua Portainer `https://github.com/leolionart/smarthome/blob/main/HomeKit/hb%26scryted-stack.yml`

> Để tránh phải cấu hình lại thủ công tôi khuyến khích bạn lưu trữ cấu hình của những hệ thống này vào trên ổ cứng gắn ngoài hoặc tạo file backup để dễ dàng restore

## Thiết lập Scryted

1. Truy cập Scryted: https://\<your ip>:10443
2. Tạo thông tin đăng nhập
3. Sau khi đăng nhập xong thực hiện cài 2 plugin
   * ONVIF Camera Plugin
   * HomeKit

### Dùng plugin ONVIF để discover camera

1. Đăng nhập vào camera theo thông tin trong label của camera
2. Add to HomeKit bằng mã QR được plugin cung cấp trên từng camera
