# IP động thì làm sao hosting? - Tự động hoá với Cosmos Server

Với đa số nhu cầu sử dụng cá nhân thì nhà mạng không cố định địa chỉ IP, dẫn tới việc domain sẽ liên tục phải thay đổi cấu hình IP thì mới truy cập được. Dưới dây là hướng dẫn để tự động hoá việc này.

## Yêu cầu

* Domain đã được chuyển về quản lý trên Cloudflare
* Có phần cứng từ 4G RAM trở lên

{% hint style="success" %}
Phương pháp dưới đây sẽ giúp bạn tự động hoá được 2 bước

1. Tự động cập nhật IP lên DNS của domain
2. Khi phát sinh một service mới dễ dàng tạo sub domain và truy cập được
3. Gia hạn SSL một cách miễn phí
{% endhint %}

Trước giờ, quy trình cài đặt và quản lý các ứng dụng self-host trong homelab ở nhà của mình thường diễn ra như sau:

1. Tạo máy ảo VM hoặc container LXC mới trên [Proxmox](https://thuanbui.me/tag/proxmox), cài đặt thêm Docker và Docker Compose.
2. Cài đặt ứng dụng bằng Docker-Compose, hoặc [Portainer](https://thuanbui.me/tag/portainer).
3. Tạo Reverse Proxy với [Nginx Proxy Manager](https://thuanbui.me/nginx-proxy-manager-reverse-proxy-docker-container/) để có thể truy cập ứng dụng thông qua tên miền.
4. Thêm ứng dụng vào Dashboard của [Homepage](https://github.com/gethomepage/homepage) để tiện việc truy cập khi cần.

Mình đã thao tác quen tay nên tất cả các bước này thường chỉ mất tối đa 10 phút. Nhưng với những bạn mới bắt đầu tìm hiểu về Docker / Self-Host, đây rõ ràng là một thách thức khi có quá nhiều khái niệm và ứng dụng phải nghiên cứu làm quen.

Để giúp tinh gọn việc cài đặt và quản lý homelab, gần đây mình đang dần chuyển qua sử dụng [Cosmos-Server](https://github.com/azukaar/Cosmos-Server), một công cụ miễn phí cực kỳ mạnh mẽ dành cho các homelabber. Quan trọng hơn là nó rất dễ sử dụng, dễ quản lý, phù hợp cho các bạn mới bắt đầu hay đã có kinh nghiệm.

Bài viết này sẽ hướng dẫn bạn cách cài đặt và sử dụng Cosmos-Server.

### I. Giới thiệu Cosmos-Server

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-server.jpg" alt=""><figcaption></figcaption></figure>

[**Cosmos-Server**](https://github.com/azukaar/Cosmos-Server) là một nền tảng quản lý ứng dụng all-in-one (tất cả trong một dành) được tối ưu để cài đặt trên server cá nhân. Nó bao gồm các tính năng sau:

* Reverse **Proxy** (tương tự như Nginx Proxy Manager hay Traefik), tích hợp sẵn công cụ xác thực chứng chỉ SSL Let’s Encrypt.
* **Docker Container Manager** (tương tự Portainer) để quản lý Docker container, image, volume, network.
* **App Store:** (tương tự Portainer, CasaOS, Yunohost) tích hợp sẵn kho ứng dụng có thể cài đặt chỉ với vài cú click chuột.
* **SmartShield technology**: Tích hợp sẵn các công cụ bảo mật để chống DDOS, hỗ trợ xác thực 2FA
* **Authentication Server**: tính năng xác thực danh tính để tối ưu bảo mật
* **Dashboard**: (tương tự Homepage, Dashy) để tạo trang chủ cá nhân.
* **VPN**: giúp truy cập ứng dụng từ bên ngoài mà không cần phải mở port trên router.

Tóm lại, Cosmos-Server không chỉ thay thế hoàn toàn các ứng dụng mình đang sử dụng: Portainer, Nginx Proxy Manager, Homepage, mà còn giúp việc quản lý trở nên tiện lợi hơn hẳn khi tất cả thao tác đều có thể thực hiện trong cùng 1 giao diện.

### II. Cài cặt Cosmos-Server

SSH vào server, cài đặt Docker bằng lệnh

```nginx
curl -fsSL https://get.docker.com | sudo shCode language: Nginx (nginx)
```

Tạo thư mục mới trên server và tạo file `docker-compose.yml`

```bash
mkdir ~/cosmos-server
cd ~/cosmos-server
nano docker-compose.ymlCode language: Bash (bash)
```

Nhập vào đoạn mã sau và lưu lại.

```yaml
version: '3.3'
services:
    cosmos-server:
        ports:
            - '80:80'
            - '443:443'
            - '4242:4242/udp'
        container_name: cosmos-server
        hostname: cosmos-server
        restart: always
        privileged: true # Required for SELinux
        volumes:
            - '/var/run/docker.sock:/var/run/docker.sock'
            - './config:/config'
            - '/:/mnt/host'
        image: 'azukaar/cosmos-server:latest'Code language: YAML (yaml)
```

Kích hoạt Cosmos-Server

```nginx
docker compose up -dCode language: Nginx (nginx)
```

Tiếp theo, mở trình duyệt, truy cập vào địa chỉ IP của server để bắt đầu quá trình thiết lập. Ví dụ: `http://192.168.0.50`.

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-1.jpg" alt=""><figcaption></figcaption></figure>

Bấm Next để tiếp tục

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-2.png" alt="" width="188"><figcaption></figcaption></figure>

Bấm Connect để tạo database

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-3.png" alt="" width="188"><figcaption></figcaption></figure>

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-4.png" alt=""><figcaption></figcaption></figure>

Sau khi Database được kích hoạt, bấm Next

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-5.png" alt="" width="188"><figcaption></figcaption></figure>

Nhập vào domain bạn muốn sử dụng để truy cập Cosmos-Server, chọn Use Let’s Encrypt automatic HTTPS, Email, và bấm Update để tạo chứng chỉ SSL. Ví dụ: `cosmos-server.example.me`

Lưu ý: domain cần phải được chỉnh DNS trỏ về IP của server đang cài đặt Cosmos-Server.

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-6.png" alt="" width="188"><figcaption></figcaption></figure>

Nhập thông tin tài khoản admin và bấm Create.

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-7.png" alt="" width="188"><figcaption></figcaption></figure>

Bấm Apply and Restart để hoàn thành quá trình thiết lập Cosmos-Server

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-9.png" alt="" width="188"><figcaption></figcaption></figure>

### III. Cài đặt ứng dụng trên Cosmos Server

Truy cập vào Comos-Server sử dụng tên miền bạn đã cấu hình ở bước trên. Đăng nhập bằng thông tin tài khoản admin đã chọn.

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-8.jpg" alt=""><figcaption></figcaption></figure>

Sau khi đăng nhập, Cosmos sẽ hiện ra trang Home trắng trơn vì lúc này chưa có ứng dụng nào được cài đặt.

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-10.png" alt=""><figcaption></figcaption></figure>

Chọn mục Market ở menu bên tay trái để xem danh sách các ứng dụng có sẵn. Bạn cũng có thể cài đặt ứng dụng bất kỳ bằng cách bấm vào nút Import Compose File và nhập nội dung file `docker-compose.yml` vào đó.

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-11.jpg" alt=""><figcaption></figcaption></figure>

### IV. Cấu hình Wildcard SSL

Để tối ưu việc cài đặt ứng dụng và xác thực chứng chỉ SSL, mình sẽ cấu hình sử dụng Wildcard SSL cho hệ thống. Chỉ cần 1 chứng chỉ SSL duy nhất cho tên miền `cosmos-server.thuanbui.me` sẽ sử dụng được cho tất cả các tên miền con như `vscode.cosmos-server.thuanbui.me` hay `plex.cosmos-server.thuanbui.me`.

#### 1. Trỏ DNS về IP của server

Sử dụng Cloudflare DNS, tạo chỉ mục DNS mới cho tên miền `*.cosmos-server.thuanbui.me` và trỏ về IP của Server đang cài đặt Cosmos-Server.

#### 2. Thiết lập Cloudflare API Token

Tạo API Tokens mới:

* Permision: Edit DNS và Read Zone
* Zone Resources: chọn tên miền bạn muốn sử dụng

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cloudflare-api-token-1.png" alt=""><figcaption></figcaption></figure>

Sau khi tạo xong, copy API Tokens để chuẩn bị paste vào mục cấu hình trên Cosmos-Server

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cloudflare-api-token-2.png" alt=""><figcaption></figcaption></figure>

#### 3. Cấu hình DNS Challenge

Quay lại Cosmos-Server, truy cập vào mục Configuration, tìm đến phần Encryption và nhập vào các thông tin cần thiết:

* Bấm chọn vào mục Use Wildcard Certificate for the root domain of …
* Mục (optional, only…) nhập vào `*.cosmos-server.thuanbui.me` và `cosmos-server.thuanbui.me`
* Pick a DNS provider: chọn cloudflare, sau đó nhập Token API đã tạo ở trên vào mục CF\_DNS\_API\_TOKEN.

<figure><img src="https://thuanbui.me/wp-content/uploads/2023/10/cosmos-18.png" alt=""><figcaption></figcaption></figure>

Bấm Save để lưu lại. Hệ thống sẽ khởi động lại sau 1-2 phút.

### V. Các tính năng khác

Cosmos-Server còn nhiều tính năng mạnh mẽ khác mà mình chưa có thời gian mò đến

* **Tạo Reverse Proxy**: truy cập vào mục URLS để xem các tên miền đã được cấu hình. Bạn có thể bấm vào nút Create để tạo Reverse Proxy mới.
* **Quản lý Docker**: truy cập vào mục ServApps để xem các container đang hoạt động. Bạn có thể tạm ngừng, khởi động lại, xem logs, truy cập vào Terminal,… của container ở đây.
* **Quản lý User**: truy cập mục User để tạo thêm người sử dụng cho Cosmos-Server
* **VPN**: truy cập mục Constellation để tạo VPN

Chúc bạn cài đặt thành công và tận hưởng thời gian khám phá Cosmos-Server.
