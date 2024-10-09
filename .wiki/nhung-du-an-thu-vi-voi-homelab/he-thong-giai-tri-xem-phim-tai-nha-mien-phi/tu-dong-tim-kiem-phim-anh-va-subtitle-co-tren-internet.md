# Tự động tìm kiếm phim ảnh và subtitle có trên internet

Sử dụng script [script-thiet-lap-cac-dich-vu-de-lam-media-server.md](../../welcome-to-my-homelab/script-thiet-lap-cac-dich-vu-de-lam-media-server.md "mention") để cài hàng loạt dịch vụ sau trên docker hoặc sử dụng Portainer để tạo Stack bao gồm các dịch vụ ở dưới

<details>

<summary>Cấu hình YML của Stack chứa toàn bộ media service</summary>

<pre><code><strong>---
</strong>version: "3.3"
services:
  plex:
    image: lscr.io/linuxserver/plex:latest
    container_name: plex
    network_mode: host
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - VERSION=docker
      - PLEX_CLAIM=claim-LvsnuxnASAHYMykWg_1w
    volumes:
      - /mnt/sda1/Config/plex:/config
      - /mnt/sda1/Series:/tv
      - /mnt/sda1/Movies:/movies
      - /mnt/sda1/Download:/download
    restart: unless-stopped

  bazarr:
    container_name: bazarr
    image: ghcr.io/hotio/bazarr
    ports:
      - "6767:6767"
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=002
      - TZ=Etc/UTC
    volumes:
      - /mnt/sda1:/downloads
      - /mnt/sda1/Config/bazarr:/config

    restart: unless-stopped

  radarr:
    container_name: radarr
    image: ghcr.io/hotio/radarr
    ports:
      - "7878:7878"
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=002
      - TZ=Etc/UTC
    volumes:
      - /mnt/sda1:/downloads
      - /mnt/sda1/Config/radarr:/config
    restart: unless-stopped

  sonarr:
    container_name: sonarr
    image: ghcr.io/hotio/sonarr
    ports:
      - "8989:8989"
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=002
      - TZ=Etc/UTC
    volumes:
      - /mnt/sda1:/downloads
      - /mnt/sda1/Config/sonarr:/config
    restart: unless-stopped

  prowlarr:
    container_name: prowlarr
    image: ghcr.io/hotio/prowlarr
    ports:
      - "9696:9696"
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=002
      - TZ=Etc/UTC
    volumes:
      - /mnt/sda1:/downloads
      - /mnt/sda1/Config/prowlarr:/config
    restart: unless-stopped

  qbittorrent:
    container_name: qbittorrent
    image: ghcr.io/hotio/qbittorrent
    ports:
      - "8080:8080"
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=002
      - TZ=Etc/UTC
    volumes:
      - /mnt/sda1:/downloads
      - /mnt/sda1/Config/qbittorrent:/config
    restart: unless-stopped
</code></pre>

</details>

## Điều chỉnh cấu hình để nhận ổ cứng

1. Tìm đường dẫn mount ổ cứng gắn ngoài của bạn
2. Tiến hành khai báo vào docker container (sửa đường dẫn /mnt/sda1/...) bên trên để nhận được ổ cứng của bạn

Chi tiết thao tác với ổ cứng gắn ngoài và chia sẻ file: [chia-se-file-trong-mang-lan-he-thong-nas-nha-lam.md](../chia-se-file-trong-mang-lan-backup-du-lieu/chia-se-file-trong-mang-lan-he-thong-nas-nha-lam.md "mention")

## Cấu hình chi tiết cho từng service

### Prowlarr - Quản lý các nguồn tìm kiếm phim

<figure><img src="../../.gitbook/assets/image (13).png" alt=""><figcaption><p>Các nguồn torrent mình thường sử dụng</p></figcaption></figure>

### Radarr - Quản lý & tìm kiếm  phim lẻ | Sonarr - Quản lý & tìm kiếm phim bộ

{% tabs %}
{% tab title="Sonarr - Quản lý phim bộ" %}
<figure><img src="../../.gitbook/assets/image (16).png" alt=""><figcaption><p>Tự động tải tập mới nhất, theo dõi theo season mới nhất hoặc toàn bộ season</p></figcaption></figure>
{% endtab %}

{% tab title="Radarr - Quản lý phim lẻ" %}
<figure><img src="../../.gitbook/assets/image (17).png" alt=""><figcaption><p>Giao diện quản lý, có thể cài đặt độ phân giải muốn lưu trữ</p></figcaption></figure>
{% endtab %}
{% endtabs %}

{% hint style="success" %}
Do cách cấu hình và cài đặt 2 dịch vụ này tương đối giống nhau nên mình sẽ gom hướng dẫn vào 1 để không quá dài. Các bạn tự thao tác nhé
{% endhint %}

1. Cấu hình Downloader = qBittorrent
2. Cấu hình kết nối Prowlarr để tự động sync các indexs vào

### qBittorrent - Trình tải torrent

<figure><img src="../../.gitbook/assets/image (19).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Để có thêm được leaker khi tải torrent cần cấu hình mở port riêng cho torrent
{% endhint %}

1. Cấu hình skin vueTorrent để tiện sử dụng hơn
2. Cấu hình nơi chứa file download tạm. Nguyên tắc sẽ tải về lưu tạm sau đó copy qua ổ cứng được cấu hình để chứa phim. Giúp tuổi thọ HHD tốt hơn
3. Cấu hình mở port, Notification qua email sau khi tải xong...

### Bazarr - Quản lý & tìm kiếm subtitle

<figure><img src="../../.gitbook/assets/image (14).png" alt=""><figcaption><p>Các nguồn tìm kiếm sub mình đang xài</p></figcaption></figure>

1. Thêm Providers (nguồn tìm kiếm subtitle)
2. Cấu hình kết nối Sonarr và Radarr để tự động cập nhật danh sách phim cần tìm sub
