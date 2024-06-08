# Hướng dẫn cấu hình cơ bản

Trong bài viết này, mình sẽ hướng dẫn cấu hình cơ bản **Router cân bằng tải Mikrotik**, bao gồm các tính năng: cấu hình PPPoE, cấu hình mạng LAN, DNS Server, DHCP Server, NAT rule trên Mikrotik để thiết lập 1 mạng LAN hoàn chỉnh có thể truy cập được Internet.

![](https://tomo.io.vn/wp-content/uploads/2023/12/so-do-mang.png)Khi đăng ký internet, nhà mạng sẽ cung cấp 1 thiết bị modem và tài khoản PPPoE,  nếu các bạn muốn quay PPPoE trên Mikrotik thì các bạn sẽ cần cấu hình trên modem nhà mạng từ chế độ PPPoE thành chế độ Bridge., sau đó cắm 1 dây LAN từ modem này xuống Mikrotik. Khi đó modem này chỉ giống như 1 thiết bị  convert chuyển tín hiệu quang thành tín hiệu điện.

[![](https://tomo.io.vn/wp-content/uploads/2023/12/mikrotik-e1704037308862-1024x455.png)](https://mikrotik.com/download)

Sau khi đã cấu hình modem nhà mạng xong ta tiến hành đấu nối dây mạng như hình, từ modem nhà mạng cắm vào cổng ether1 của router mikrotik, các cổng còn lại ta có thể cắm vào PC, swiitch hoặc wifi

Ta tải phần mềm winbox [tại đây.](https://mikrotik.com/download)

Tuỳ vào hệ điều hành của máy tính sử dụng để cài winbox ta chọn 64bit hoặc 32bit cho phù hợp.[\
![](https://tomo.io.vn/wp-content/uploads/2023/12/mikrotik-1024x507.png)](https://mikrotik.com/download)

[Hiện tại Mikrotik cho phép phần mềm winbox giao tiếp với router thông qua cả địa chỉ IP hoặc địa chỉ MAC](http://https/TOMO.IO.VN/). Ta cắm máy tính vừa cài đặt winbox vào cổng bất kì của mikrotik trừ cổng ether1 ta vừa cắm vào phía nhà mạng

Sau khi tải về thì các bạn mở phần mềm này lên.

![](https://tomo.io.vn/wp-content/uploads/2023/12/mik-1-1024x290.png)

Ta chọn sang tab **Neighbor,** tích chuột vào **địa chỉ ip** hoặc **Mac Address** của thiết bị. Ở dòng **Connect To** sẽ nhận thông tin ta vừa chọn. Tài khoản mặc định của router mikrotik là **admin** và mật khẩu sẽ để trống, trừ 1 số trường hợp như router Mikrotik 4011, mật khẩu sẽ nằm ở mặt đáy của thiết bị.

Sau khi tích vào địa chỉ mac và nhập mật khẩu vào mục login ta tiến hành chọn **Connect.**

&#x20;Khi đã kết nối thành công, ta nên xoá cấu hình mặc định của router trước khi cấu hình bằng cách vào **System** – **Reset Configuration** – tích vào **No Default Configuration** – **Reset Configuration.**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_13.png)

và chọn **Yes**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_14.png)

Sau khi chọn **yes** xong, thiết bị sẽ tự động xoá cấu hình mặc định và khởi động lại.

Ta sẽ mở lại phần mềm **winbox** và bấm vào MAC của thiết bị scan được ở tab **Neighbor,** login: **admin,** Password: để trống và chọn **Connect**

![](https://tomo.io.vn/wp-content/uploads/2023/12/mik-1-1024x290.png)

Sau khi kết nối thành công, trên giao diện winbox sẽ hiển thị cửa sổ cho ta đổi mật khẩu router, ta nên thực hiện đổi mật khẩu.&#x20;

![](https://tomo.io.vn/wp-content/uploads/2023/12/Untitled-e1704038248772.png)**Old Password** sẽ là mật khẩu hiện tại của router, nếu không có mật khẩu thì ta để trống ô này.\
**New Password** là mật khẩu mới cho router và **Confirm Password** sẽ là xác nhận lại mật khẩu mới ta vừa tạo và chọn **Change Now**

Để cấu hình nhanh cho router mikrotik, trên màn hình winbox ta chọn **Quick Set**

![](https://tomo.io.vn/wp-content/uploads/2023/12/Screenshot\_1-1024x405.png)

* Mode: **router**
* Port: port cắm từ modem nhà mạng vào cổng ether1 của mikrotik ta chọn **Eth1**
* Address Accquistion: **PPPoE**
* **PPPoe User** và **PPPoE Password**: tài khoản và mật khẩu nhà mạng cung cấp, ta có thể xin từ tổng đài hoặc kỹ thuật viên lắp đường truyền internet nhà bạn.
* MAC Address: đây là địa chỉ MAC của cổng **ether1** ( cổng quay số PPPoE ta chọn ở mục **Port**).

Đối với đường truyền FPT ta có thể nhập địa chỉ MAC của modem FPT vào ô **MAC Address** để sau khi quay số xong không cần gọi tổng đài nhờ reset **MAC.**

* IP Address là lớp mạng LAN của router mikrotik, các thiết trong mạng của bạn sẽ sử dụng để truy cập internet

Ở đây mình đặt là **192.168.5.1**, đồng thời đấy cũng sẽ là gateway của mạng lan.

* Netmark: mình sẽ chọn 255.255.255.0 ( /24)

Sau đó tích mục **Bridge All LAN Port** nghĩa là sẽ nhóm tất cả các cổng còn lại của router thành 1 nhóm ngoại trừ cổng **ether1** đang dùng để quay số.\
Tiếp đến sẽ tích mục **NAT** để các máy tính trong nội bộ sẽ truy cập được ra ngoài internet

Tiếp đến sẽ chọn **Apply**

Khi quay số PPPoE thành công thì mục **PPPoE status** sẽ hiện thì là **connected**

![](https://tomo.io.vn/wp-content/uploads/2023/12/mikrotik-1-e1704040022539.png)Tiếp theo trên giao diện **Quick Set.**\
Ta tích vào mục DHCP Server chọn Apply và chọn **OK.**

![](https://tomo.io.vn/wp-content/uploads/2023/12/mikrotik-2-e1704040330654.png)

Ta sẽ thấy dòng **DHCP Server Range** xuất hiện **192.168.5.3-192.168.5.254** đấy là dải mạng được sử dụng ở trong hệ thống mạng của bạn.

Cuối cùng là ta đặt **DNS** cho router bằng cách vào\
**IP – DNS – Servers**\
ta nhập **8.8.8.8** và **1.1.1.1** chọn **Apply**

![](https://tomo.io.vn/wp-content/uploads/2023/12/mikrotik-3-e1704040699522.png)

Như vậy là các máy tính bên dưới mạng LAN  đã có thể nhận được IP cấp từ Mikrotik và truy cập internet bình thường.

**HairPin Nat** – Để có thể sử dụng được tên miền trong hệ thống mạng LAN

Ở đây ta cần lấy 2 thông tin là tên miền hiện tại của thiết bị và xác định dải mạng lan: **192.168.5.1/24**\
Để lấy bật chức năng tên miền DDNS của router mikrotik hiện tại ta vào **IP – Cloud**, tích chọn mục **DDNS enable** và chọn **apply**

![](https://tomo.io.vn/wp-content/uploads/2024/01/hairpin-nat-1-e1704183625332.png)

Ta sẽ thấy **DNS name** xuất hiện,  ” **…sn.mynetname.net**”  là cloud của thiết bị. Ta có thể sử dụng để truy cập từ xa.

Tiếp theo sẽ vào mục **IP -Firewall** sang tab **Address List** chọn dấu **+**\
name: **wan**\
Address sẽ là **DNS Name** ta vừa bật ở mục **IP – Cloud** \
sau đó chọn **Apply – OK**

![](https://tomo.io.vn/wp-content/uploads/2024/01/aa-1.png)

Tiếp theo ta cần thêm **IP Lan** vào mục **Address List**, tương tự như mục cloud\
**IP -Firewall** sang tab **Address List** chọn dấu **+**\
name: **lan**\
Address sẽ là **IP  Lan.** như sơ đồ ví dụ của mình là **192.168.5.0/24**

![](https://tomo.io.vn/wp-content/uploads/2024/01/mik-haiirpi-nat.png)

Kết quả sau khi thực hiện

![](https://tomo.io.vn/wp-content/uploads/2024/01/TY.png)

Sau đó trên cửa sổ Firewall, ta sang tab mangle chọn “+” để thêm rule \
Chain: **prerouting**\
In.interface: **bridge1** chứa lớp mạng lan 192.168.5.0/24 ( tên **bridge1** nằm ở thanh công cụ **Bridge** của phần mềm winbox)&#x20;

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_6.png)

sang tab **Advanced** \
Dst.Address list: **wan (** ta vừa tạo ở Address List)

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_7-e1704185110815.png)

sang tab **Action**\
Action: **mark connection**\
New Connection Mark: **hairpinnat**\
chọn **OK**

![](https://tomo.io.vn/wp-content/uploads/2024/01/d-e1704185295645.png)

ta tiếp tục sang tab **NAT** ở cửa sổ **Firewall**\
Chain: **srcnat** \
Connection Mark: **hairpinnat**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_8.png)

sang tab **Advanced** của cửa sổ **NAT**\
Src.Address List: **lan** (vừa tạo ở mục Address List)

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_9.png)

Tiếp theo sang tab **Action**\
Action: **masquerade**\
và chọn **OK**

Vậy là xong! Chúc các bạn thực hiện thành công
