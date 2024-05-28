# Welcome to my HomeLAB

Flex về hệ thống smarthome và tiện ích mình tự xây dựng từ 2022 tới hiện tại, qua nhiều cải tiến mình quyết định chia sẻ lại để các bạn có một lộ trình chơi đồ phù hợp.&#x20;

> Với niềm yêu thích công nghệ, luôn tìm kiếm giải pháp xoay quanh việc tối ưu các vấn đề thường gặp. Tôi dành thời gian cho dự án cá nhân này để học thêm các kỹ năng liên quan tới lập trình và các công nghệ phổ biến.

## Xây dựng Home LAB nhu cầu cơ bản

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

### Theo dõi hệ thống

<figure><img src="https://egg.d.pr/i/zRDjAi.jpg" alt=""><figcaption></figcaption></figure>

Theo đõi lượng điện tiêu thụ trong nhà, nhiệt độ thu thập từ cảm biến về độ chênh lệch nhiệt độ trong phòng và ngoài trời để tắt điều hoà đúng lúc, hạn chế sử dụng điện không hiệu quả.

***

## HomeHUB - Zigbee HUB, Homebridge

**Thông tin cấu hình thiết bị sử dụng trong HomeHUB**

<table><thead><tr><th width="156">RaspberryPI</th><th>Cấu hình</th></tr></thead><tbody><tr><td>CPU</td><td>4 CPU</td></tr><tr><td>RAM</td><td>1G</td></tr><tr><td>ROM</td><td>16G</td></tr></tbody></table>

### Đưa thiết bị lên HomeKit

Không một hãng nào có tất cả thiết bị đáp ứng cả 3 tiêu chí rẻ, ổn định, bền bỉ. Mục tiêu của dự án là đưa thiết bị IOT của bất cứ hãng nào lên Apple HomeKit và hoạt động một cách ổn định với chi phí thấp nhất.

<div align="left">

<figure><img src="https://egg.d.pr/i/IBIEzi.jpg" alt="" width="188"><figcaption></figcaption></figure>

</div>

### Zigbee HUB cho toàn bộ thiết bị

<div align="left">

<figure><img src=".gitbook/assets/image.png" alt="" width="375"><figcaption><p>Các cảm biến của 2 hãng khác nhau vẫn kết nối được chung 1 HUB Zigbee</p></figcaption></figure>

</div>

Trong trường hợp hệ thống chính gặp sự cố vẫn cần hệ thống khác khởi động được lên ngay để không làm dán đoạn các hoạt động như mở cửa garage hay hệ thống báo động trong nhà.

## Connect with me

{% embed url="https://aitran.naai.studio/" %}
