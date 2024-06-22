# Reverse proxy - Truy cập từ domain vào nhiều server trên 1 public IP

Nhà mạng chỉ cung cấp 1 địa chỉ IP tại 1 thời điểm, trong trường hợp bạn cần public 1 server với port 80 và 443 thì đơn giản chỉ cần NAT để open port. Tuy nhiên vấn đề sẽ phát sinh khi bạn bắt đầu setup nhiều server trong cùng 1 server với cùng port hoặc khác server IP nhưng cùng port, hệ thống mạng gia đình sẽ không cho phép việc này. Bạn cần một cơ chế ở giữa để phân bổ với domain nào truy cập vào public IP sẽ được truy cập vào local IP server tương ứng để lấy dữ liệu. Khái niệm này gọi là reverse proxy, và có nhiều công cụ để thực hiện. Ở đây mình giới thiệu công cụ đơn giản nhất Caddy.

<figure><img src="../../../.gitbook/assets/image (11).png" alt=""><figcaption></figcaption></figure>

### Cài đặt Caddy bằng Docker

Bạn có thể cài đặt Caddy bằng nhiều cách thông qua [hướng dẫn ở đây](https://caddyserver.com/docs/install).

Mình chọn cách cài đặt bằng Docker để có thể dễ dàng xóa đi khi cần mà không ảnh hưởng đến hệ thống.

Tạo file `compose.yml`

```bash
mkdir ~/caddy
cd ~/caddy
nano compose.ymlCode language: Bash (bash)
```

Nhập vào nội dung sau

```markdown
services:
  caddy:
    image: caddy:2.7.6-alpine
    container_name: caddy
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
      - "443:443/udp"
    volumes:
      - ./Caddyfile:/etc/caddy/Caddyfile
      - ./html:/var/www/html
      - ./caddy_data:/data
      - ./caddy_config:/configCode language: Markdown (markdown)
```

Tạo thêm file `Caddyfile`

```nginx
nano CaddyfileCode language: Nginx (nginx)
```

và nhập tạm vào nội dung

```javascript
:80 {
	respond "Hello, world!"
}Code language: JavaScript (javascript)
```

Kích hoạt Caddy

```nginx
docker compose up -dCode language: Nginx (nginx)
```

Mở trình duyệt truy cập vào địa chỉ `http://<IP>`, nếu thấy hiện ra dòng chữ `Hello, world!` nghĩa là Caddy đã được cài đặt và kích hoạt thành công.

### Cấu hình Caddy làm Reverse Proxy

Để cấu hình Caddy làm Reverse Proxy cho Portainer đang chạy ở địa chỉ `192.168.0.50:9000`, mình chỉnh sửa file Caddyfile và bổ sung thêm 3 dòng sau

```yaml
portainer.thuanbui.me {
	reverse_proxy 192.168.0.50:9000
}Code language: YAML (yaml)
```

Sau đó khởi động lại Caddy bằng lệnh

```bash
docker compose exec -w /etc/caddy caddy caddy reloadCode language: Bash (bash)
```

Chờ 1-2 phút để Caddy hoàn thành bước xác thực chứng chỉ SSL, giờ mình đã có thể truy cập Portainer thông qua địa chỉ `https://portainer.thuanbui.me`

Trong trường hợp Portainer và caddy nằm cùng trên 1 server, bạn có thể tham khảo bài viết dưới đây để biết cách thiết lập các container vào chung 1 docker network và chỉnh sửa lại Caddyfile như sau

```
portainer.thuanbui.me {
	reverse_proxy portainer
}
```





P/s: Có những công cụ khác để quản lý proxy bằng UI, bạn có thể tham khảo bài viết [https://thuanbui.me/nginx-proxy-manager-reverse-proxy-openlitespeed-docker/](https://thuanbui.me/nginx-proxy-manager-reverse-proxy-openlitespeed-docker/)
