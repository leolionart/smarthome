# Không thể truy cập vào home server thông qua public IP từ nội bộ

Vấn đề nảy sinh khi Home PC muốn truy cập đến Server (cả hai nằm trong cùng mạng LAN) thông qua Public IP của Router, kết nối sẽ bị lỗi.

Tuy nhiên có một hạn chế là bạn không thể truy cập vào server thông qua IP Public hoặc tên miền nếu đang ở nhà, nằm chung mạng LAN với Server. Bạn chỉ có thể truy cập server từ mạng Internet bên ngoài (không cùng mạng LAN với server)

Để giải quyết vấn đề này, bắt buộc bạn phải cấu hình thêm Hairpin NAT cho router. Trong bài viết này mình sẽ chia sẻ cách thiết lập Hairpin NAT trên router Mikrotik để có thể truy cập vào dịch vụ mạng trong nhà bằng tên miền, khỏi phải gõ địa chỉ IP của server.

<figure><img src="../../../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

Trong sơ đồ trên, chúng ta có 4 thiết bị:

* WORK PC: nằm ngoài mạng LAN, có Public IP là `192.168.88.1`
* Router có Public IP là 172.16.16.1 và LAN IP là `192.168.0.1`
* Home PC: nằm trong LAN, có LAN IP là `192.168.0.100`
* Server: nằm trong LAN có LAN IP là `192.168.0.30`

Khi sử dụng WORK PC để truy cập đến Server, Router sẽ thực hiện **Destination NAT** như sau:

1. WORK PC gửi gói tin với Source IP Address là `192.168.88.1` và Destination IP Address là `172.16.16.1` trên cổng 443 để yêu cầu gửi dữ liệu từ Server.
2. Router sẽ thực hiện NAT và chuyển đổi Destination IP Address thành `192.168.0.30` (LAN IP của server). Source IP Address vẫn giữ nguyên là `192.168.88.1`
3. Server nhận được và phản hồi lại gói tin với Source IP Address là `192.168.0.30` và Destination IP Address là `192.168.88.1`.
4. Router nhận được gói tin từ Server và nhận ra gói tin này là một phần của chuỗi kết nối trước đó nên sẽ đảo ngược chu trình NAT, thay thế Source IP Address thành `172.16.16.1`. Destination IP Address vẫn giữ nguyên là `192.168.88.1`.
5. WORK PC được gói tin mà nó đang đợi. Quá trình kết nối được thiết lập giữa WORK PC và Server.

{% hint style="info" %}
Mình sử dụng dual WAN (2 đường cáp quang) nên cách cấu hình sẽ phức tạp hơn
{% endhint %}
