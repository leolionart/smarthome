# Welcome to my HomeLAB

Flex về hệ thống smarthome và tiện ích mình tự xây dựng từ 2022 tới hiện tại, qua nhiều cải tiến mình quyết định chia sẻ lại để các bạn có một lộ trình chơi đồ phù hợp.&#x20;

> Với niềm yêu thích công nghệ, luôn tìm kiếm giải pháp xoay quanh việc tối ưu các vấn đề thường gặp. Tôi dành thời gian cho dự án cá nhân này để học thêm các kỹ năng liên quan tới lập trình và các công nghệ phổ biến.

## Tối ưu hoá việc dùng mạng trong gia đình

<figure><img src="https://egg.d.pr/i/TuTrWz.jpg" alt=""><figcaption></figcaption></figure>

**Thông tin cấu hình thiết bị sử dụng cho HomeLAB**

<table><thead><tr><th width="163">BananaPI</th><th>Cấu hình</th></tr></thead><tbody><tr><td>CPU</td><td>4 CPU</td></tr><tr><td>RAM</td><td>4G</td></tr><tr><td>ROM</td><td>32G (SD Card để cài hệ điều hành)</td></tr><tr><td>EMMC</td><td>16G (dùng làm bộ nhớ đệm mở rộng cho RAM)</td></tr><tr><td>HHD</td><td>3Tb (4 ổ cứng cũ)</td></tr></tbody></table>

{% hint style="info" %}
Với phần cứng này tôi có thể vận hành được các tiện ích như ở dưới 24/7 với chi phí tiền điện chưa tới 50k/tháng. Để tối ưu hơn về hiệu năng bạn có thể sử dụng một laptop cũ hoặc một mini PC để cài đặt. Hoặc chơi lớn bằng PC luôn thì càng tốt, chỉ có điều tốn điện hơn thôi
{% endhint %}

### Hệ thống giải trí miễn phí

![](https://egg.d.pr/i/KB4YQS.jpg)

> Bạn yêu thích nhiều series phim hay chiếu trên nhiều nền tảng khác nhau, mong muốn có thể xem sớm nhất khi được phát hành kể cả là bản CAM. Tôi thiết lập một hệ thống với nhiệm vụ

* Tìm kiếm trên internet về thông tin bộ phim tôi muốn
* Tự tìm link và tải về bằng torrent khi xuất hiện
* Tự nâng cấp bản CAM lên bản chất lượng cao hơn nếu phim hay và tôi muốn giữ lại xem tiếp
* Tự tìm Eng và Việt Sub cho các phim này để khi tôi xem thì có sẵn sub chất lượng
* Thêm phim vào danh sách theo dõi dễ dàng: Xem trailer thích có thể vào Plex add to watchlist là xong. Hệ thống tự chạy ngầm để tải phim về.

<table data-view="cards"><thead><tr><th>Service</th><th>Description</th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td>Plex</td><td>Tự tạo server xem phim ở nhà (hoặc từ xa nếu muốn)</td><td><a href=".gitbook/assets/image (7) (1).png">image (7) (1).png</a></td></tr><tr><td>qBittorrent</td><td>Tải phim</td><td><a href=".gitbook/assets/image (4) (1).png">image (4) (1).png</a></td></tr><tr><td>Radarr</td><td>Quản lí phim lẻ</td><td><a href=".gitbook/assets/image (2) (1).png">image (2) (1).png</a></td></tr><tr><td>Sonarr</td><td>Quản lí phim bộ</td><td><a href=".gitbook/assets/image (1) (1).png">image (1) (1).png</a></td></tr><tr><td>Prowlarr</td><td>Sẽ tìm nguồn tải phim cho 2 cái trên</td><td><a href=".gitbook/assets/image (6) (1).png">image (6) (1).png</a></td></tr><tr><td>Bazarr</td><td>Tự động tải sub việt, sub anh theo tên phim</td><td><a href=".gitbook/assets/image (5) (1).png">image (5) (1).png</a></td></tr></tbody></table>

### Camera IMOU hỗ trợ full chức năng của [HomeKit Secure Video](https://support.apple.com/guide/icloud/set-up-homekit-secure-video-mm7c90d21583/icloud)

<div align="left">

<figure><img src=".gitbook/assets/image (4).png" alt="" width="188"><figcaption></figcaption></figure>

</div>

[dua-thiet-bi-camera-len-apple-homekit.md](smarthome-hub/apple-homekit-cho-thiet-bi-khong-ho-tro/dua-thiet-bi-camera-len-apple-homekit.md "mention")

### Theo dõi lịch sử cảm biến, nhiệt độ, tiền điện sử dụng toàn căn nhà

<figure><img src="https://egg.d.pr/i/zRDjAi.jpg" alt=""><figcaption></figcaption></figure>

Theo đõi lượng điện tiêu thụ trong nhà, nhiệt độ thu thập từ cảm biến về độ chênh lệch nhiệt độ trong phòng và ngoài trời để tắt điều hoà đúng lúc, hạn chế sử dụng điện không hiệu quả. Tôi thiết lập một màn hình trung tâm để theo dõi tất cả chỉ số này. Dự án này giúp tôi hiểu rõ hơn về cách lưu, clean và visually dữ liệu lên các công cụ vẽ biểu đồ. \
\
Nếu bạn cũng muốn có được trải nghiệm tương tự, loạt bài này sẽ cực kỳ hữu ích:\


[thiet-lap-he-thong-dashboard-theo-doi-hieu-nang-tien-dien-cam-bien](nhung-du-an-thu-vi-voi-homelab/thiet-lap-he-thong-dashboard-theo-doi-hieu-nang-tien-dien-cam-bien/ "mention")

***

## HomeHUB - Zigbee HUB, Homebridge

**Thông tin cấu hình thiết bị sử dụng trong HomeHUB**

<table><thead><tr><th width="156">RaspberryPI</th><th>Cấu hình</th></tr></thead><tbody><tr><td>CPU</td><td>4 CPU</td></tr><tr><td>RAM</td><td>1G</td></tr><tr><td>ROM</td><td>16G</td></tr></tbody></table>

{% hint style="success" %}
Với đặc thù hoạt động 24/7, tiết kiệm điện năng, vận hành ổn định. Tôi chọn Raspberry cũ cỡ 500k cho các nhiệm vụ trên. Với 2 tác vụ này CPU và RAM của thiết bị gần như luôn hoạt động ở mức >70% trong 2 năm chưa một lần gặp sự cố
{% endhint %}

### Đưa thiết bị lên HomeKit

Không một hãng nào có tất cả thiết bị đáp ứng cả 3 tiêu chí rẻ, ổn định, bền bỉ. Mục tiêu của dự án là đưa thiết bị IOT của bất cứ hãng nào lên Apple HomeKit và hoạt động một cách ổn định với chi phí thấp nhất có thể nhưng vẫn cần đảm bảo tính ổn định&#x20;

<div align="center">

<figure><img src="https://egg.d.pr/i/IBIEzi.jpg" alt="" width="188"><figcaption></figcaption></figure>

</div>

**Có 2 phương án để Fake HomeKIT:**&#x20;

* Mode firmware tuỳ biến cho thiết bị phần cứng
* Tích hợp thông qua Homebridge (vẫn giữ firmware của hãng)

Tôi thường chọn giải pháp thứ 2 vì đơn giản và hoạt động ổn định hơn. Bạn có thể tham khảo loạt bài:\
[apple-homekit-cho-thiet-bi-khong-ho-tro](smarthome-hub/apple-homekit-cho-thiet-bi-khong-ho-tro/ "mention")

{% hint style="info" %}
Tuy nhiên trong một số trường hợp việc tích hợp này sẽ khiến thiết bị phản hồi chậm. Do thông thường lệnh vẫn phải đi lên server của hãng (nếu k có tuỳ chọn control via LAN)  sau đó mới xuống thiết bị. Khi đấy nên xem xét tới việc up firmware để add thẳng vào homekit
{% endhint %}

### Zigbee HUB cho toàn bộ thiết bị

<div align="center">

<figure><img src=".gitbook/assets/image.png" alt="" width="375"><figcaption><p>Các cảm biến của 2 hãng khác nhau vẫn kết nối được chung 1 HUB Zigbee</p></figcaption></figure>

</div>

Thiết bị Zigbee rất đa dạng, pin trâu và thiết kế rất nhỏ gọn vì vậy có nhiều sản phẩm đẹp, rẻ trên thị trường phù hợp với từng nhu cầu sử dụng cụ thể. Tuy nhiên, yếu điểm của Zigbee luôn cần một HUB trung tâm để giao tiếp với internet; mỗi hãng sẽ lại có một HUB khác nhau và giá không hề rẻ. Làm thế nào để xoá bỏ rào cản này?



Tự tuỳ biến một HUB để thu nhận sóng Zigbee là một giải pháp vô cùng hiệu quả. Hướng dẫn chi tiết:

[mot-hub-ket-noi-duoc-toan-bo-thiet-bi-zigbee-cua-tat-ca-cac-hang.md](smarthome-hub/apple-homekit-cho-thiet-bi-khong-ho-tro/mot-hub-ket-noi-duoc-toan-bo-thiet-bi-zigbee-cua-tat-ca-cac-hang.md "mention")

## Connect with me

{% embed url="https://aitran.naai.studio/" %}
Blog cá nhân chia sẻ thêm nhiều thứ về bản thân mình
{% endembed %}
