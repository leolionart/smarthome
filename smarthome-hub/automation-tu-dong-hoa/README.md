---
cover: >-
  https://images.unsplash.com/photo-1526628953301-3e589a6a8b74?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHw2fHxBdXRvbWF0aW9ufGVufDB8fHx8MTcxNjc5ODU0M3ww&ixlib=rb-4.0.3&q=85
coverY: 0
---

# Automation - Tự động hoá

> Tự động hoá có thể thiết lập ở Apple Home hoặc ở trong chính app của hãng hoặc bạn có thể tự lập trình trên HomeLAB. Tôi sẽ có từng hướng dẫn cụ thể cho từng loại tự đọng hoá khác nhau ở loạt bài viết tiếp theo

Đối với các anh em mới bắt đầu tiếp cận với Nhà Thông Minh. Thì đa số sẽ dừng lại ở nhu cầu đơn giản kiểu như: Nâng cấp thiết bị để có thể bật tắt các thiết bị như: Công tắc, bóng đèn, điều chỉnh màu, độ sáng, bật tắt điều hoà, quạt… trên app, trên smartphone.&#x20;

Nhưng giá trị của nhà thông minh không phải chỉ đơn giản vậy. Mà mục tiêu là tự động hoá kết hợp.&#x20;

### 1. HomeKit Automation là gì?&#x20;

HomeKit Automation là một tính năng của Apple HomeKit cho phép người dùng tạo ra các kịch bản tự động cho các thiết bị thông minh trong nhà. Thay vì phải điều khiển các thiết bị thủ công, bạn có thể thiết lập các hành động tự động dựa trên các sự kiện hoặc điều kiện cụ thể.

### 2. Các thành phần của HomeKit Automation

#### 2.1 Kích hoạt (Triggers):

&#x20;  \- **Thời gian**: Automation có thể được kích hoạt vào một thời điểm cụ thể hoặc trong một khoảng thời gian nhất định, ví dụ như bật đèn vào lúc hoàng hôn hoặc tắt đèn vào lúc nửa đêm.

&#x20;  \- **Địa điểm**: Dựa trên vị trí của bạn, như khi bạn rời khỏi hoặc trở về nhà.

&#x20;  \- **Cảm biến**: Sử dụng dữ liệu từ các cảm biến như cảm biến chuyển động, cảm biến cửa, hoặc cảm biến môi trường.

&#x20;  \- **Hoạt động của thiết bị**: Kích hoạt dựa trên trạng thái của các thiết bị khác, chẳng hạn như khi một thiết bị được bật hoặc tắt.

#### 2.2 Điều kiện (Conditions):

&#x20;  \- Điều kiện bổ sung giúp tinh chỉnh khi nào Automation sẽ được kích hoạt, ví dụ như chỉ khi có người ở nhà, hoặc chỉ vào những ngày nhất định trong tuần.

#### 2.3 Hành động (Actions):

&#x20;  \- Các hành động mà các thiết bị sẽ thực hiện khi Automation được kích hoạt, chẳng hạn như bật/tắt đèn, điều chỉnh nhiệt độ, hoặc khóa/mở khóa cửa.

### 3. Những thiết bị nào có thể tạo Automation?&#x20;

#### 3.1 Đèn thông minh (Smart Lights):

Đèn thông minh như Philips Hue, LIFX, Nanoleaf có thể được điều khiển bật/tắt, thay đổi độ sáng, và điều chỉnh màu sắc theo các kịch bản tự động.

#### 3.2 Ổ cắm thông minh (Smart Plugs):

Hầu hết các Ổ cắm thông minh trong HomeKit đều có thể tạo tự động hoá, ngoài ra với các ổ cắm có tính năng đo dòng điện, thống kê tiêu thụ điện… bạn có thể tạo tự động hoá dựa trên các thông số chi tiết đó để tạo tự động hoá, cho phép bạn tự động hóa việc bật/tắt các thiết bị điện không thông minh.

#### 3.3 Công tắc thông minh (Smart Switches):

Công tắc thông minh Zigbee hoạt động trong HomeKit hoặc các công tắc Native Work with Apple HomeKit giúp bạn điều khiển đèn và quạt trần từ xa và theo kịch bản tự động.

#### 3.4 Cảm biến (Sensors):

Các loại cảm biến chuyển động, cảm biến cường độ ánh sáng, cảm biến hiện diện con người, cảm biến phát hiện rò rỉ nước, cảm biến đóng mở cửa, cảm biến nhiệt độ, độ ẩm… đều có thể tạo automation kích hoạt tự động khi phát hiện có tác động thay đổi trạng thái.

#### 3.5 Khóa thông minh (Smart Locks):

Các loại khóa thông minh như August Smart Lock, Schlage Sense có thể tự động khóa/mở khóa theo các kịch bản nhất định, có thể kết hợp với Bluetooth của thiết bị di động cá nhân như iphone để phát hiện khi bạn rời khỏi hoặc trở về nhà, tự động mở/đóng cửa.&#x20;

#### 3.6 Camera an ninh (Security Cameras):

Các mẫu Camera thông minh hoạt động với HomeKit như Aqara, Logitech Circle View, EufyCam hỗ trợ HomeKit Secure Video và có thể kích hoạt tự động hóa dựa trên phát hiện chuyển động hoặc âm thanh.

#### 3.7 Bộ điều khiển rèm và màn cửa (Smart Blinds):

Các bộ điều khiển rèm thông minh hoạt động trên HomeKit khi kết hợp với cảm biến cường độ ánh sáng để điều khiển để tự động mở/đóng theo ánh sáng tự nhiên hoặc theo thời gian trong ngày.

#### 3.8 Hệ thống âm thanh (Speakers):

Loa như Apple HomePod, Sonos One có thể tích hợp vào các kịch bản tự động để phát nhạc hoặc thông báo. Có thể phát các đoạn thông báo bằng tiếng việt với chính giọng nói của nóc nhà hoặc của AI lập trình.&#x20;

### 4. Phần mềm hỗ trợ.&#x20;

Do sự giới hạn của HomeKit trong việc khác thác chi tiết các thông số thiết bị. Chúng ta cần kết hợp thêm 2 ứng dụng miễn phí để khai thác chi tiết thông số của các thiết ví dụ cường độ dòng điện, chỉ số vol, công suất tiêu thụ… của các thiết bị điện.&#x20;

Hai ứng dụng đó là EVE và Controler for Home. [Chi tiết](tu-dong-hoa-nang-cao.md)

## KẾT BÀI:&#x20;

HomeKit Automation giúp bạn tối ưu hóa sự tiện lợi và  khai thác tối đa giá trị của các thiết bị thông minh trong gia đình, biến các tác vụ hàng ngày thành các kịch bản tự động đơn giản và hiệu quả.