Mời mọi người ghé thăm: 
- [Blog mình viết về công nghệ](https://geek.naai.studio/)
- [Bài viết, hướng dẫn về smarthome](https://smarthome.naai.studio/)

Repo này là một nơi mình chia sẻ tổng hợp các config, script giúp mọi người có thể clone về và deploy lên server bất kỳ để triển khai nhanh một hay nhiều hệ thống IOT khác nhau, chủ yếu được setup trên docker.
## Help scripts setup nhanh các dịch vụ trên linux/raspberry

### Hệ thống giải trí miễn phí

![](https://egg.d.pr/i/KB4YQS.jpg)

> Bạn yêu thích nhiều series phim hay chiếu trên nhiều nền tảng khác nhau, mong muốn có thể xem sớm nhất khi được phát hành kể cả là bản CAM. Tôi thiết lập một hệ thống với nhiệm vụ

* Tìm kiếm trên internet về thông tin bộ phim tôi muốn
* Tự tìm link và tải về bằng torrent khi xuất hiện
* Tự nâng cấp bản CAM lên bản chất lượng cao hơn nếu phim hay và tôi muốn giữ lại xem tiếp
* Tự tìm Eng và Việt Sub cho các phim này để khi tôi xem thì có sẵn sub chất lượng
* Thêm phim vào danh sách theo dõi dễ dàng: Xem trailer thích có thể vào Plex add to watchlist là xong. Hệ thống tự chạy ngầm để tải phim về.


### Đưa thiết bị lên HomeKit

Không một hãng nào có tất cả thiết bị đáp ứng cả 3 tiêu chí rẻ, ổn định, bền bỉ. Mục tiêu của dự án là đưa thiết bị IOT của bất cứ hãng nào lên Apple HomeKit và hoạt động một cách ổn định với chi phí thấp nhất có thể nhưng vẫn cần đảm bảo tính ổn định&#x20;

<div align="center">

<figure><img src="https://egg.d.pr/i/IBIEzi.jpg" alt="" width="188"><figcaption></figcaption></figure>

</div>

**Có 2 phương án để Fake HomeKIT:**&#x20;

* Mode firmware tuỳ biến cho thiết bị phần cứng
* Tích hợp thông qua Homebridge (vẫn giữ firmware của hãng)

Tuy nhiên trong một số trường hợp việc tích hợp này sẽ khiến thiết bị phản hồi chậm. Do thông thường lệnh vẫn phải đi lên server của hãng (nếu k có tuỳ chọn control via LAN)  sau đó mới xuống thiết bị. Khi đấy nên xem xét tới việc up firmware để add thẳng vào homekit
{% endhint %}
#### Camera IMOU hỗ trợ full chức năng của [HomeKit Secure Video](https://support.apple.com/guide/icloud/set-up-homekit-secure-video-mm7c90d21583/icloud)

Camera hỗ trợ sẵn HomeKit sẽ đắt hơn ít nhất gấp 2 lần camera thông thường với cùng cấu hình độ phân giải. Đôi khi còn có ít chức năng hơn. Mục tiêu của tôi là khiến nó phải hỗ trợ HomeKit để lúc cần xem camera chỉ cần mở Apple Home. Hoặc khi có ai bấm chuông thì mặc định sẽ hiển thị được hình ảnh camera trên Apple TV. Chi tiết:


### Zigbee HUB cho thiết bị Zigbee tất cả các hãng
Không cần mua HUB zigbee cho từng hãng Xiaomi, Aqara, Tuya, eWelink... thích xài thiết bị của hãng nào thì xài

Thiết bị Zigbee rất đa dạng, pin trâu và thiết kế rất nhỏ gọn vì vậy có nhiều sản phẩm đẹp, rẻ trên thị trường phù hợp với từng nhu cầu sử dụng cụ thể. Tuy nhiên, yếu điểm của Zigbee luôn cần một HUB trung tâm để giao tiếp với internet; mỗi hãng sẽ lại có một HUB khác nhau và giá không hề rẻ. Làm thế nào để xoá bỏ rào cản này?



## Connect with me 🫵🏻

Background của mình học về đồ hoạ, thích công nghệ nên tự học và làm nhiều thứ tuy nhiên chưa học qua trường lớp bài bản nào về coding. Nghề chính mình làm Product Manager cho các công ty công nghệ. Mình tin rằng với kinh nghiệm của mình có thể truyền tài và giúp cho mọi người cho dù ở bất cứ background như thế nào đều tự vọc vạch được những thứ mình đã học. Vì mình luôn tin rằng khi bạn dạy lại người khác là bạn đang học lại gấp 3 lần 1 thứ bất kỳ. Nếu có nhu cầu đọc thêm về bản thân hoặc tham khảo về ngành của mình có thể đọc thêm ở chuyên trang cá nhân mình ở đây nhé
