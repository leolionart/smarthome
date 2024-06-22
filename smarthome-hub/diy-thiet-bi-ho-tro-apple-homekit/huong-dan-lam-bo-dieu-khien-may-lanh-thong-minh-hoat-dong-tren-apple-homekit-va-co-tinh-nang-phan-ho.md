---
description: Sưu tầm từ bác Mai Đình Thắng
---

# Hướng dẫn làm bộ điều khiển máy lạnh thông minh hoạt động trên Apple HomeKit và có tính năng phản hồ

## Chi tiết xem video

{% embed url="https://fb.watch/smyzv1cd2X/" %}

## CÁC BƯỚC CẦN LƯU Ý:

1. Cắm USB Flash với Mạch đúng dây (GND-GND, 5V-5V, RXD-TX, TXD-RX. Chân Jump cắm vào IO0-GND trong cùng
2. Chạy flash tools chọn đúng Chiptype ESP8285
3. Tick vào dòng firmware và điền số 0 vào ô màu đỏ
4. Chọn đúng 40Mhz và đúng cổng COM
5. Flash xong rút USB ra khỏi máy tính, rút bỏ Jump IO0-GND, cắm lại USB Flash vào máy tính để cấp nguồn tạm thời.
6. Dùng laptop hoặc iDevice kết nối vào Wifi do mạch ESP phát ra có tên ESP\_CONFIG\_(Mã MAC của chip)
7. Dùng tools quét IP tìm IP của mạch ESP trong mạng Wifi gia đình, truy cập vào IP đó bằng Chrome.
8. Mục 2 GPIO chọn: IR send =GPIO4, IR Receive =GPIO14.
9. Vào mục More, nhấn reboot lại mạch ESP, sau đó quay lại mục GPIO kiểm tra cấu hình đã lưu.
10. Vào mục IR, nhấn dòng Decode Protocol, nhấn dòng OK, dùng Remote chỉ vào mắt đen của ESP nhấn ON/OFF để nhận diện điều hòa. Nếu điều hòa hỗ trợ sẽ tự hiện ra (Của mình tự chuyển thành TOSHIBA) Nếu không nhận diện thì chọn thủ công theo hướng dẫn bên dưới phần UPDATE.
11. Ở hàng có nút "IR Feedback". Hãy nhấn OFF và sau đó nhấn ON trở lại để kích hoạt tính năng phản hồi 2 chiều khi dùng Remote.

Mở app Nhà (Home) bấm thêm thiết bị di động, vào mục tùy chọn khác. Thêm mạch ESP-XXXXXX vào phòng tùy ý.

1. Nhập CODE: 1111-1111 để hoàn thành.
2. Nhấn "hiển thị các ô riêng biệt" để tách 2 phụ kiện ra, thuận tiện điều khiển tốc độ gió.

Hàn dây cho cục nguồn 5V hoặc dùng củ sạc 1A đời cũ hoặc pin dự phòng. Lắp mạch ESP ở nơi mắt hồng ngoại nhìn thấy điều hòa, tốt nhất dưới 4m. Hoặc gắn luôn vào trong điều hòa càng tốt.

Link tải tools, firmware: https://drive.google.com/file/d/1r47DjV0\_6ePzaVbOYtlUIehU5Gv7vfyM/view?usp=drive\_link

\
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

{% hint style="info" %}
UPDATE: Với trường hợp mạch điều hòa không học được Remote và không nhận diện được mã điều hòa. Các bạn có thể chọn thủ công bằng cách bấm vào: 18. KELVINATOR, Sau đó chọn hãng điều hòa hỗ trợ trong danh sách (Ảnh chụp phía dưới).
{% endhint %}

![](<../../.gitbook/assets/image (1) (1) (1).png>)\


### Link mua link kiện:

1. Mạch ESP IR:\
   https://s.shopee.vn/4ptyK9WBUC
2. Nguồn 5v xịn. Mã HKL-5m05 (Nếu dùng lại cục sạc cũ thì khỏi mua):\
   https://s.shopee.vn/8pQ75WlYag
3. USB flash: Mã CP2102 Red:\
   https://s.shopee.vn/8f6gtF7iXA
