---
cover: >-
  https://images.unsplash.com/photo-1535016120720-40c646be5580?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHwzfHxNb3ZpZXxlbnwwfHx8fDE3MTY3OTg1NjV8MA&ixlib=rb-4.0.3&q=85
coverY: 0
---

# Hệ thống giải trí, xem phim tại nhà miễn phí

<div data-full-width="true">

<img src="https://egg.d.pr/i/KB4YQS.jpg" alt="">

</div>

Với nhu cầu thi thoảng xem phim vào cuối tuần, tôi không muốn có một khoản phải thanh toán cố định trên nhiều nền tảng xem phim trực tuyến khác nhau như Netflix, Hulu, HBO... Vì vậy một giải pháp để tôi chủ động lưu trữ các bộ phim yêu thích để stream lên các thiết bị màn hình lớn như TV, máy tính, iPad, Điện thoại để xem là một nhu cầu cần thiết. Hoặc đơn giản là biết chừng nào phim ra để lên các dịch vụ kia xem thôi.

{% hint style="success" %}
Nếu bạn có nhu cầu xem phim mọi lúc mọi nơi với Home media server sẽ yêu cầu kiến thức về open port hoặc tunnel, tôi có hướng dẫn ở bài viết [truy-cap-vao-cac-home-service-tu-ben-ngoai-thong-qua-domain.md](../../pro-tips/truy-cap-vao-cac-home-service-tu-ben-ngoai-thong-qua-domain.md "mention")\
\
Ở trong bài viết này chúng ta tập trung vào việc xây dựng dịch vụ này bên trong mạng LAN
{% endhint %}

## Các dịch vụ yêu cầu

<table><thead><tr><th width="141">Serices</th><th>Description</th></tr></thead><tbody><tr><td>Plex</td><td>Tự tạo server xem phim ở nhà, xem trên mọi thiết bị</td></tr><tr><td>qBittorrent</td><td>Tải phim bằng torrent</td></tr><tr><td>Radarr</td><td>Quản lí phim lẻ</td></tr><tr><td>Sonarr</td><td>Quản lí phim bộ</td></tr><tr><td>Prowlarr</td><td>Sẽ tìm nguồn tải phim cho 2 cái trên</td></tr><tr><td>Bazarr</td><td>Tự động tải sub việt, sub anh theo tên phim</td></tr></tbody></table>

## Cách cài đặt và cấu hình

[cai-dat-plex-media-server.md](cai-dat-plex-media-server.md "mention")

[tu-dong-tim-kiem-phim-anh-va-subtitle-co-tren-internet.md](tu-dong-tim-kiem-phim-anh-va-subtitle-co-tren-internet.md "mention")

[tu-dong-tai-ve-phim-yeu-thich.md](tu-dong-tai-ve-phim-yeu-thich.md "mention")

{% hint style="info" %}
Để chia sẻ cho bạn bè cùng xem phim chung, bạn cần một phần cứng có khả năng encoding mạnh mẽ hơn, giúp stream nhiều độ phân giải cùng lúc. Nếu dùng trong mạng LAN thì không cần nên bạn có thể sử dụng phần cứng của các mạch máy tính nhúng như này là đủ. Nếu có nhu cầu cao hơn vui lòng chọn nền tảng phần cứng mạnh mẽ hơn nhé
{% endhint %}
