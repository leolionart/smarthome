# Sử dụng Window/MacOS/Linux

Tải Docker Desktop [tại đây.](https://www.docker.com/products/docker-desktop/)

Mở phần mềm Docker Desktop, Chọn **Image** – **Search for Image…**

![](https://tomo.io.vn/wp-content/uploads/2024/01/docker-1024x160.png)

Lần lượt tải 3 Image bên dưới&#x20;

```
grafana/grafana:latest
bitnami/prometheus:latest
mashinkopochinko/snmp_exporter_mikrotik:latest
```

* **snmp\_exporter\_mikrotik**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_34.png)

* **grafana**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_35.png)

* **prometheus**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_36.png)

Kết quả sau khi tải xong 3 Image

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_39-1024x277.png)

Để khởi chạy 3 Image trên ta làm như sau

Đối với tab port, ta nhập giống port ở container

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_38-1024x435.png)

Kết quả sau khi chạy 3 Image

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_40-1024x271.png)

Để truy cập vào Prometheus:[ http://localhost:9090](http://localhost:9090/)

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_41-1024x283.png)

Kiểm tra Prometheus đã hoạt động chưa&#x20;

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_42-1-1024x395.png)

Để kiểm tra Grafana đã hoạt động chưa ta truy cập[ http://localhost:3000](http://localhost:3000/)

Tên đăng nhập và mật khẩu đăng nhập mặc định: **admin/admin**

![](https://tomo.io.vn/wp-content/uploads/2024/01/grafana-1024x533.png)

Ta có thể đổi mật khẩu hoặc bỏ qua bằng cách ấn **Skip**

![](https://tomo.io.vn/wp-content/uploads/2024/01/grafana1.png)

Để có thể theo dõi Router Mikrotik, ta cần bật SNMP trên Mikrotik

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_46.png)

Để Prometheus có thể theo dõi được thông số của Mikrotik cần dán đoạn code bên dưới vào Image Container Prometheus

```
  prometheus:
    image: prom/prometheus:v2.37.9
    user: ${CURRENT_USER}
    container_name: prometheus
    ports:
      - "9090:9090"
    command:
      - '--config.file=/etc/prometheus/prometheus.yml'
      - '--storage.tsdb.path=/prometheus'
      - '--web.console.libraries=/usr/share/prometheus/console_libraries'
      - '--web.console.templates=/usr/share/prometheus/consoles'
    volumes:
      - prometheus-data:/etc/prometheus/
      - prometheus-data:/prometheus
    restart: unless-stopped
#######
  snmp_exporter:
    image: prom/snmp-exporter
    container_name: snmp_exporter
    restart: always
    volumes:
      - /mnt/sda1/Config/prometheus/snmp/:/etc/snmp_exporter/
    ports:
      - "9116:9116"
    depends_on:
      - prometheus
```

Ta dán đoạn code trên vào đường dẫn **/opt/bitnami/prometheus/conf/prometheus.yml**

Của container **Prometheus**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_43-1024x545.png)

Sau khi chỉnh sửa file xong ta lưu lại.

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_44-1024x409.png)

Khởi động lại Container Prometheus

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_45-1024x604.png)

Để kiểm tra đã thành công hay chưa, ta vào lại [http://localhost:9090](http://localhost:9090/)

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_47-1024x431.png)

Hiển thị **Up** là đã thành công.

Để hiển thị giao diện thông số bằng Granafa, ta vào [http://localhost:3000](http://localhost:3000/)

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_48.png)

Tiếp theo tìm **Prometheus**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_49-1024x273.png)

Chọn **Add new data source**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_50-1024x105.png)

Name: tên bất kì&#x20;

Prometheus server URL: http://localhost:9090

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_51-1024x416.png)

Kéo xuống dưới cùng chọn save & test

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_52.png)

Tiếp theo ta sẽ tạo giao diện hiển thị

**Menu – Dashbroard – new**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_53-1024x288.png)

Chọn **Import**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_54.png)

Ta nhập **14857** và **Load**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_55.png)

Name: **Mikrotik1**

Prometheus: sẽ là tên đã tạo ở mục **connecctions**

và chọn **Import**

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_56-1024x519.png)

Kết quả sau khi hoàn thành&#x20;

![](https://tomo.io.vn/wp-content/uploads/2024/01/Screenshot\_57-1024x537.png)
