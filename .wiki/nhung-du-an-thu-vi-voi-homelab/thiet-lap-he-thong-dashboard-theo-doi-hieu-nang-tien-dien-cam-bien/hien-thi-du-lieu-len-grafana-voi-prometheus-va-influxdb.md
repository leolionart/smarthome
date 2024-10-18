# Hiển thị dữ liệu lên Grafana với Prometheus và InfluxDB

Tôi muốn theo dõi trực quan các dữ liệu thu thập từ cảm biến, tốc độ mạng hiện tại, tiền điện sử dụng hàng tháng. Tập trung tất cả trên một dashboard

<table><thead><tr><th width="175">Serices</th><th>Description</th></tr></thead><tbody><tr><td>Node-RED</td><td>Thiết lập các automation flows, tuỳ biến thêm kịch bản mới hoặc gửi dữ liệu từ các cảm biến vào InfluxDB</td></tr><tr><td>InfluxDB</td><td>Chứa dữ liệu log từ Node-RED gửi về</td></tr><tr><td>Prometheus</td><td>Đóng vai trò trigger để collect dữ liệu từ các service lấy dữ liệu. Lưu tạm trên RAM và cho phép Grafana query trực tiếp vào để visually</td></tr><tr><td>Node_exporter</td><td>Đọc các chỉ số hệ thống linux (CPU, RAM, Nhiệt độ...)</td></tr><tr><td>SNMP_exporter</td><td>Đọc các chỉ số trên Mikrotik (tốc độ mạng, số thiết bị đang kết nối)</td></tr><tr><td>Grafana</td><td>Đóng vai trò visually các dữ liệu trên dưới dạng dashboard</td></tr></tbody></table>

## Cài đặt

Sử dụng câu lệnh sau để cài hàng loạt: [script-thiet-lap-dich-vu-theo-doi-va-tu-dong-hoa.md](../../../wiki/welcome-to-my-homelab/script-thiet-lap-dich-vu-theo-doi-va-tu-dong-hoa.md "mention")

Hoặc cài đặt thủ công theo hướng dẫn:

<details>

<summary>Cấu hình Docker Compose cho tất cả dịch vụ trên</summary>



</details>

## Cấu hình

### Khởi tạo InfluxDB - Nơi lưu trữ dữ liệu

```
docker exec -it influxdb influx
CREATE DATABASE sensor_data
quit
```

### Chỉnh cấu hình prometheus - Service lấy dữ liệu

`sudo nano /mnt/sda1/Config/prometheus/prometheus.yml`

<details>

<summary>File cấu hình mẫu prometheus.yml</summary>

```
# Sample config for Prometheus.

global:
  scrape_interval:     15s # Set the scrape interval to every 15 seconds. Default is every 1 minute.
  evaluation_interval: 15s # Evaluate rules every 15 seconds. The default is every 1 minute.
  # scrape_timeout is set to the global default (10s).

  # Attach these labels to any time series or alerts when communicating with
  # external systems (federation, remote storage, Alertmanager).
  external_labels:
      monitor: 'Mikrotik'

# Alertmanager configuration
alerting:
  alertmanagers:
  - static_configs:
    - targets: ['localhost:9093']

# Load rules once and periodically evaluate them according to the global 'evaluation_interval'.
rule_files:
  # - "first_rules.yml"
  # - "second_rules.yml"

# A scrape configuration containing exactly one endpoint to scrape:
# Here it's Prometheus itself.
scrape_configs:
  # The job name is added as a label `job=<job_name>` to any timeseries scraped from this config.
  - job_name: 'prometheus'

    # Override the global default and scrape targets from this job every 5 seconds.
    scrape_interval: 10s
    scrape_timeout: 10s
    tls_config:
      insecure_skip_verify: true
    # metrics_path defaults to '/metrics'
    # scheme defaults to 'http'.

    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'cadvisor'
    static_configs:
    - targets: ['172.16.0.16:8082']
#     label:
#       instance: 'BPI'
    - targets: ['172.16.0.15:8082']
#     label: 
#       service: 'Pi-III'

  - job_name: 'node_exporter'
    static_configs:
     - targets: ['172.16.0.16:9100']   
#     - targets: ['192.168.88.11:9100']

  - job_name: 'adguard-exporter'
    static_configs:
     - targets: ['155.248.160.112:9617']
     - targets: ['172.16.0.16:9617']

#  - job_name: homebridge-exporter
#   static_configs:
#    - targets:
#      - homebridge-host:36123

#
  - job_name: Mikrotik
    static_configs:
      - targets:
        - 172.16.0.1 # mikrotik_ip
    metrics_path: /snmp
    params:
      module: [mikrotik]
    relabel_configs:
      - source_labels: [__address__]
        target_label: __param_target
      - source_labels: [__param_target]
        target_label: instance
      - target_label: __address__
        replacement: mk_snmp_exporter:9116  # The SNMP exporter's real hostname:port.



```

</details>

### Cấu hình Grafana

1. Cấu hình source data từ Prometheus
2. Import dashboard có sẵn hoặc tạo dashboard bằng các câu query thủ công

**Một số file config cho các dashboard mình đang sử dụng**

<details>

<summary>Theo dõi chỉ số cảm biến, mạng, tiền điện (tất cả trong 1)</summary>



</details>

### **Cấu hình NodeRED-Flow**

1. Cài thêm các Palette sau:
   * node-red-contrib-homebridge-automation
   * node-red-contrib-influxdb
2. Import Flow lấy log sensors từ Homebridge: https://raw.githubusercontent.com/leolionart/smarthome/main/Monitoring/node-red-flow.json ![](https://egg.d.pr/i/FbA9oe.jpg)
