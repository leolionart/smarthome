---
description: Trích nguồn từ bác Mai Đình Thắng
---

# Các phương án chơi nhà thông minh tính tới hiện tại

## Apple HomeKit Native

Các thiết bị này hầu hết là sử dụng kết nối wifi. Và dán nhãn “Works with Apple HomeKit”. Các thiết bị này đã được Apple cấp chứng chỉ kiểu giống MFi ấy. Nên giá thành từ cao tới… rất cao. Hoạt động ổn định. Kết nối dễ ẹc. Cấp nguồn - vô Wifi, quét mã vô Home. (mình chưa có món nào loại này).

## Kết nối qua giao thức Matter

Về cơ bản kiểu kết kết nối này giống mục 1 là sử dụng wifi. Khác là chuẩn Matter là chuẩn mới ra và thống nhất cho các nền tảng. Dễ hiểu thì giống EU bắt buộc Apple chuyển sang Type C cho thống nhất. Để dùng được kết nối này thì điều kiện cần là phải có thiết bị Apple hỗ trợ Threat và Matter. (Loa HomePod Mini, HomePod 2 và Apple TV Gen 7).

## Kết nối qua Zigbee

Kiểu kết nối này hiện nay là phổ biến và tối ưu nhất. Tất cả các thiết bị thông minh trong nhà sẽ dùng riêng loại sóng Zigbee để giao tiếp với nhau và cùng kết nối về bộ quản lý trung tâm (Tạm gọi là Hub/Router Zigbee). Điều kiện cần là phải chọn mua đúng Hub Zigbee có dán nhãn “Works with Apple HomeKit”.

* Ưu điểm 1: của loại kết nối này là sử dụng năng lượng thấp (ví dụ: 1 chiếc cảm biến cửa dùng sóng Zigbee với viên pin 2032 remote xe máy có thể hoạt động hơn 12 tháng).
* Ưu điểm 2: Loại kết nối này cũng không gây quá tải cho router wifi gia đình vì nó chỉ sử dụng 01 IP duy nhất cho hub Zigbee.
* Ưu điểm 3: Các thiết bị sóng Zigbee hoạt động như một “điểm truy cập” tức là nó nhận sóng từ cục Hub trung tâm và truyền sóng cho thiết bị ở gần nó. Nhờ ưu thế này mà một căn nhà 4 tầng nhưng chỉ cần 1 hub mà vẫn phủ sóng tốt. Miễn các thiết bị có thể thấy nhau theo đường thẳng để tiếp sóng.&#x20;

## Kết nối wifi từ các sản phẩm DIY&#x20;

Kiểu kết nối này lẽ ra không được tách ra thành một mục vì cơ bản nó giống mục 1-2. Tuy nhiên nó lại không phải là sản phẩm vật lý cho nên mình tách ra cho người mới chơi dễ hiểu. Sản phẩm của kiểu kết nối này là các firmware do các lập trình viên tạo ra từ mỗi dự án. Ví dụ bạn các dự án điều khiển máy lạnh, quạt máy, điều khiển đèn led RGB WS2812b… được viết cho các mạch điều khiển của Esp32, Esp8266…. Người dùng chỉ việc mua các phần cứng theo yêu cầu. Tải firmware về flash vào, hàn dây và lắp đặt. Sau đó quét mã (hoặc nhập code) đi kèm để đưa thiết bị vào HomeKit.
