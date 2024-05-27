---
description: >-
  Mấy câu lệnh này hay xài nên lưu lại sẵn để đỡ phải nhớ, vào copy dán terminal
  thôi
---

# Frequently used command

## Uninstall Docker Engine

### Gỡ cài đặt Docker Engine, CLI, containerd, và Docker Compose:

```
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
```

### Xóa hình ảnh, containers, volumes hoặc tệp cấu hình tùy chỉnh trên máy chủ:

```
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
```

### Dừng và xoá tất cả containers

```
docker ps -a
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```

> Nếu gặp lỗi ở bất cứ bước nào, cố gắng dùng cấu trúc dưới đây để làm mới source và thử lại câu lện

```
$ sudo apt-get autoremove
$ sudo apt update & sudo apt upgrade
```

### Sửa lỗi không truy cập được ssh

`$ ssh-keygen -R 192.168.88.23`

## Thao tác với Linux

### Với file và folder

| Câu lệnh                                                                                                               | Mục đích          |
| ---------------------------------------------------------------------------------------------------------------------- | ----------------- |
| `sudo rm -r foldername`                                                                                                | Xoá folder bất kỳ |
| `sudo mv /usr/local/lib/node_modules/homebridge-config-ui-x /usr/local/lib/node_modules/homebridge-config-ui-x_Backup` | Đổi tên folder    |
| ## Với các node                                                                                                        |                   |

| Câu lệnh                            | Mục đích                 |
| ----------------------------------- | ------------------------ |
| `sudo systemctl daemon-reload`      | Reload systemd           |
| `sudo systemctl restart prometheus` | Restart prometheus       |
| `sudo systemctl enable prometheus`  | Start prometheus at boot |
| `systemctl status prometheus`       | Startus prometheus       |

## Lệnh thường dùng

### Chỉnh cấu hình prometheus

`sudo nano /mnt/sda1/Config/prometheus/prometheus.yml`

### Check port

`sudo lsof -i -P -n | grep 9090`

### Tạo Influxdb

```
docker exec -it influxdb influx
CREATE DATABASE sensor_data
quit
```

### Update Plex

`sudo apt install --only-upgrade plexmediaserver`
