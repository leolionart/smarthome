---
description: >-
  Mấy câu lệnh này hay xài nên lưu lại sẵn để đỡ phải nhớ, vào copy dán terminal
  thôi
---

# Frequently used command

### Nếu gặp lỗi ở bất cứ bước nào

Cố gắng dùng cấu trúc dưới đây để làm mới source và thử lại câu lện

```
sudo apt-get autoremove
sudo apt update & sudo apt upgrade -y
```

### Kiểm tra khả năng chịu tải hệ thống

Kiểm tra mức sử dụng RAM

`top -o -%MEM`

Hoặc sử dụng các tuỳ chọn tại [use-memory-card-as-ram.md](../use-memory-card-as-ram.md "mention")

### Sửa lỗi không truy cập được ssh

`$ ssh-keygen -R 192.168.88.23`

## Thao tác với Linux

### Với file và folder

#### Xoá folder bất kỳ

`sudo rm -r foldername`

#### Đổi tên folder

`sudo mv /usr/local/lib/node_modules/homebridge-config-ui-x /usr/local/lib/node_modules/homebridge-config-ui-x_Backup`

### Với các node

#### Reload systemd

`sudo systemctl daemon-reload`

#### Restart a service

`sudo systemctl restart prometheus`

#### Start a service at boot

`sudo systemctl enable prometheus`

#### Startus a service

`systemctl status prometheus`

## Lệnh thường dùng

### Check port

`sudo lsof -i -P -n | grep 9090`

### Update Plex

`sudo apt install --only-upgrade plexmediaserver`
