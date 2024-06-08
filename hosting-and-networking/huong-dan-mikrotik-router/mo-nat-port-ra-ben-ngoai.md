# Mở NAT port ra bên ngoài

## Cấu hình mở port cơ bản

ta chọn **IP – Firewall – NAT – “+”**\
Tại tab Gerneral\
Chain: **dstnat**\
Dst.Address List: **wan** ( wan tạo ở mục Address List ở trên)\
Protocol: **tcp**\
Dst.port: **4370** ( port muốn mở để truy cập từ internet vào )

![](https://tomo.io.vn/wp-content/uploads/2024/02/nat-1.png)

Sau đó ta sang tab **Action**\
Action: **dst-nat**\
To Address: **192.168.5.90** (là IP của thiết bị cần mở port)\
To port : **4370** (là port muốn mở) – ví dụ đầu ghi hikvision port web : 80, port app 8000, port máy chấm công 4370,….

{% hint style="warning" %}
Trường hợp nhà bạn đang sử dụng 2 line mạng (Tức quay PPPoE 2 line) bạn cần chọn thêm phần **In Interface** line bạn muốn mở port
{% endhint %}

Và chọn **OK.**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_4.png)

{% hint style="danger" %}
Sau khi thao tác các bước trên bạn check port vẫn đóng thì cần gọi lên tổng đài nhà mạng yêu cầu mở port lên là được nhé. FPT dễ mở hơn Viettel nhiều.
{% endhint %}

Chúc các bạn thành công !!!
