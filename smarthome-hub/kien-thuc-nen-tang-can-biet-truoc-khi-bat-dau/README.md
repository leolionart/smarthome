---
cover: >-
  https://images.unsplash.com/photo-1455849318743-b2233052fcff?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHw2fHxHZXQlMjBzdGFydHxlbnwwfHx8fDE3MTY3OTg1MjB8MA&ixlib=rb-4.0.3&q=85
coverY: 0
---

# Kiến thức nền tảng - Cần biết trước khi bắt đầu

Khi bước vào thế giới smarthome bạn sẽ được mời vào ma trận với rất nhiều lựa chọn về hãng với các mức giá khác nhau. Và thông thường bạn chỉ được chọn 1 trong số các hãng để xài. \
[cac-phuong-an-choi-nha-thong-minh-tinh-toi-hien-tai.md](cac-phuong-an-choi-nha-thong-minh-tinh-toi-hien-tai.md "mention")

> Tôi ở đây để cung cấp cho bạn một góc nhìn mới và lộ trình chi tiết để từng bước trở thành người chơi đồ smarthome

## Tiêu chí cá nhân mình khi lựa chọn thiết bị:

1. **Kiểu dáng thiết kế:** Phải đẹp, phù hợp với nội thất căn nhà, lắp vào không mất thẩm mỹ
2. **Khả năng nâng cấp:** Lắp thêm từng phần được, không yêu cầu có hết ngay từ đầu
3. **Perfomance**: Tính ổn định, không thể nào chấp nhận bật đèn mà quá 1s đèn mới sáng
4. **Chi phí:** Đương nhiên phải là phương án rẻ nhất. Mời bạn tham khảo: [bang-thong-ke-chi-phi-dau-tu-thiet-bi-phuc-vu-smarthome.md](bang-thong-ke-chi-phi-dau-tu-thiet-bi-phuc-vu-smarthome.md "mention")

Loạt bài viết dưới đây mình tập trung vào hệ DIY (tự chế) cho các thiết bị không quá quan trọng, các công tắc sử dụng chính trong nhà của mình đang theo Aqara Zigbee vì đáp ứng tốt 3 tiêu chí đầu của mình đề ra. Và phù hợp với nhà mình chủ yếu dùng đồ Apple nên cả nhà k cần cài app cũng xài được smarthome

{% hint style="info" %}
Dự án này phù hợp với những người yêu thích nghiên cứu thử nghiệm

* Chi phí xây dựng rất rẻ (khó có thể rẻ hơn)
* Gần như không có cái gì là không điều khiển được
* Hoạt động ổn định, gần như khi phần cứng hư hỏng chứ cả năm nay mình gần như chẳng cần mất thời gian đụng tới nữa
{% endhint %}

## Tiêu chí khi vận hành smarthome

1. Mọi thứ phải được vận hành tự động hoá một cách tối đa, qua rồi cái thời ra lệnh giọng nói hay cầm điện thoại bấm bấm
2. Dễ dàng thay thế, mở rộng kịch bản sử dụng (mua thiết bị mới) một cách dễ dàng
3. Lỡ đầu tư rồi, có cách nào tối đa hoá đầu tư để làm những thứ khác không

{% hint style="warning" %}
Đã chơi smarthome sẽ nghe tới các khái niệm Home Assistant, Homebridge, Hoobs. Với mình để tối ưu hiệu năng (sử dụng phần cứng nhẹ) mình sẽ sử dụng Homebridge.
{% endhint %}

## Phần cứng hiện có

<table><thead><tr><th width="159.33333333333331">Tên phần cứng</th><th>Nhiệm vụ</th><th>Note</th></tr></thead><tbody><tr><td>Aqara HUB</td><td>Đưa các thiết bị Zigbee của Aqara lên Apple Home</td><td><a data-mention href="bang-thong-ke-chi-phi-dau-tu-thiet-bi-phuc-vu-smarthome.md">bang-thong-ke-chi-phi-dau-tu-thiet-bi-phuc-vu-smarthome.md</a></td></tr><tr><td>RaspberryPi 3</td><td>Đưa các thiết bị không hỗ trợ homekit lên Apple Home</td><td>Tách 1 thiết bị riêng chỉ làm 1 nhiệm vụ duy nhất cho ổn định</td></tr><tr><td>BananaPi</td><td>Vai trò tương tự RaspberryPI, cài linux chạy các dịch vụ phù hợp</td><td>Bạn cần cái này cho các dự án thú vị với HOMELAB</td></tr></tbody></table>

{% hint style="danger" %}
Nếu bạn thực sự tự tin thì cũng có thể bỏ qua Aqara HUB vì RaspberryPI có thể thành một [HUB Zigbee đa năng](../apple-homekit-cho-thiet-bi-khong-ho-tro/mot-hub-ket-noi-duoc-toan-bo-thiet-bi-zigbee-cua-tat-ca-cac-hang.md) hỗ trợ kết nối bất cứ thiết bị Zigbee của hãng nào. Tuy nhiên tôi đã lỡ mua Aqara M2 rồi thì dùng thôi :joy:
{% endhint %}

Sau khi tham khảo tất cả những điều trên, tôi hi vọng bạn và tôi đã bắt đầu đứng chung một góc nhìn, tôi sẽ từng bước giúp bạn thực hiện hoá điều bạn mong muốn.
