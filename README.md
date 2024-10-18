Mời mọi người ghé thăm: 
- [Blog mình viết về công nghệ](https://geek.naai.studio/)
- [Bài viết, hướng dẫn về smarthome](https://smarthome.naai.studio/)

Repo này là một nơi mình chia sẻ tổng hợp các config, script giúp mọi người có thể clone về và deploy lên server bất kỳ để triển khai nhanh một hay nhiều hệ thống IOT khác nhau, chủ yếu được setup trên docker.
## Help scripts setup nhanh các dịch vụ trên linux/raspberry

### Thiết lập các dịch vụ cơ bản sau khi cài mới hệ điều hành

Kết nối ssh qua Terminal và thiết hành paste script này vào và ngồi đợi

```
curl -sk https://raw.githubusercontent.com/leolionart/smarthome/main/HomeLab_basic_setup.sh | sudo bash -
```

**Các dịch vụ sau sẽ được cài đặt tự động**

| Serices       | Description                                                                                                                                                        |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| DockerCompose | Dễ dàng cài đặt các dịch vụ được đóng gói sẵn                                                                                                                      |
| Portainer     | Quản lý trực quan trên nền tảng web                                                                                                                                |
| Watchtower    | Tự cập nhật phiên bản cho các dịch vụ trong portainer                                                                                                              |
| Dockge        | Tương tự portainer nhưng nhẹ hơn và miễn phí. Phù hợp với bạn nào muốn một công cụ quản lý docker trên nhiều máy chủ cùng lúc, dễ xem log và ssh vào container hơn |

### Hệ thống giải trí miễn phí - Plex Server, Sonarr, Radarr,Prolarr

> Bạn yêu thích nhiều series phim hay chiếu trên nhiều nền tảng khác nhau, mong muốn có thể xem sớm nhất khi được phát hành kể cả là bản CAM. Tôi thiết lập một hệ thống với nhiệm vụ

* Tìm kiếm trên internet về thông tin bộ phim tôi muốn
* Tự tìm link và tải về bằng torrent khi xuất hiện
* Tự nâng cấp bản CAM lên bản chất lượng cao hơn nếu phim hay và tôi muốn giữ lại xem tiếp
* Tự tìm Eng và Việt Sub cho các phim này để khi tôi xem thì có sẵn sub chất lượng
* Thêm phim vào danh sách theo dõi dễ dàng: Xem trailer thích có thể vào Plex add to watchlist là xong. Hệ thống tự chạy ngầm để tải phim về.

Script tự động cài đặt các dịch vụ giải trí

```
Đang cập nhật cấu hình cơ bản
```

**Các dịch vụ sau sẽ được cài đặt tự động**

| Service     | Description                                           |
| ----------- | ----------------------------------------------------- |
| Plex        | Tự tạo server xem phim ở nhà                          |
| qBittorrent | Tải phim                                              |
| Radarr      | Quản lí phim lẻ                                       |
| Sonarr      | Quản lí phim bộ                                       |
| Prowlarr    | Sẽ tìm nguồn tải phim cho 2 cái trên                  |
| Bazarr      | Tự động tải sub việt, sub anh theo tên phim           |

### Đưa thiết bị lên HomeKit - Homebridge, Scrypted Camera
Đây là các dịch vụ vận hành trung gian để đưa thiết bị IOT của bạn lên nền tảng Apple Home một cách dễ dàng. Nếu chưa biết về những thứ này là gì, mời bạn tham khảo các bài viết về IOT cơ bản của mình để tìm hiểu. Cho bạn nào biết rồi thì setup và tận hưởng thôi.

Kết nối ssh qua Terminal và thiết hành paste script này vào và ngồi đợi

```
Updating
```

>Lưu ý: Để chạy được script này cần chạy trước script đã được setup ở bước 1. Nếu không sẽ không thể hoạt động

**Các dịch vụ sau sẽ được cài đặt tự động**

| Serices       | Description                                                 |
| ------------- | ----------------------------------------------------------- |
| Homebridge    | Kết nối thiết bị vào HomeKit                                |
| Scryted       | Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home |

#### Camera IMOU hỗ trợ full chức năng của [HomeKit Secure Video](https://support.apple.com/guide/icloud/set-up-homekit-secure-video-mm7c90d21583/icloud)

Camera hỗ trợ sẵn HomeKit sẽ đắt hơn ít nhất gấp 2 lần camera thông thường với cùng cấu hình độ phân giải. Đôi khi còn có ít chức năng hơn. Mục tiêu của tôi là khiến nó phải hỗ trợ HomeKit để lúc cần xem camera chỉ cần mở Apple Home. Hoặc khi có ai bấm chuông thì mặc định sẽ hiển thị được hình ảnh camera trên Apple TV. Chi tiết:


### Zigbee HUB cho thiết bị Zigbee tất cả các hãng
Không cần mua HUB zigbee cho từng hãng Xiaomi, Aqara, Tuya, eWelink... thích xài thiết bị của hãng nào thì xài

Thiết bị Zigbee rất đa dạng, pin trâu và thiết kế rất nhỏ gọn vì vậy có nhiều sản phẩm đẹp, rẻ trên thị trường phù hợp với từng nhu cầu sử dụng cụ thể. Tuy nhiên, yếu điểm của Zigbee luôn cần một HUB trung tâm để giao tiếp với internet; mỗi hãng sẽ lại có một HUB khác nhau và giá không hề rẻ. Làm thế nào để xoá bỏ rào cản này?



## Connect with me 🫵🏻

Background của mình học về đồ hoạ, thích công nghệ nên tự học và làm nhiều thứ tuy nhiên chưa học qua trường lớp bài bản nào về coding. Nghề chính mình làm Product Manager cho các công ty công nghệ nên việc làm quen ngôn ngữ lập trình và hiểu biết về người dùng giúp mình xây dựng các tiện ích giúp các bạn setup được như mình đã làm một cách nhanh hơn. 

Mình tin rằng với kinh nghiệm của mình có thể truyền tải và giúp cho mọi người cho dù ở bất cứ background như thế nào đều tự vọc vạch được những thứ mình đã học. Vì mình luôn tin rằng khi bạn dạy lại người khác là bạn đang học lại gấp 3 lần 1 thứ bất kỳ. Nếu có nhu cầu đọc thêm về bản thân hoặc tham khảo về ngành của mình có thể đọc thêm ở chuyên trang cá nhân mình ở đây nhé
<p align="left">
<a href="https://twitter.com/quangai" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="quangai" height="30" width="40" /></a>
<a href="https://linkedin.com/in/leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="leolion" height="30" width="40" /></a>
<a href="https://fb.com/art.leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="art.leolion" height="30" width="40" /></a>
<a href="https://dribbble.com/leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/dribbble.svg" alt="leolion" height="30" width="40" /></a>
<a href="https://www.behance.net/leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/behance.svg" alt="leolion" height="30" width="40" /></a>
</p>

<h3 align="left">Support:</h3>
<p><a href="https://www.buymeacoffee.com/leolionart"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="leolionart" /></a></p><br><br>

