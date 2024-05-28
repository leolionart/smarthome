# Chia sẻ file trong mạng LAN - Hệ thống NAS nhà làm

## Tạo NAS server với Samba

`$ sudo apt install samba samba-common-bin -y`

`$ sudo nano /etc/samba/smb.conf`

### Cấu hình theo mẫu như sau ở dưới cùng của file smb

> Nhớ chỉnh path đúng thực tế

```
[NAS]
path = /mnt/sda1
writeable = yes
guest ok = yes
create mask = 0777
directory mask = 0777
NASpath = /mnt/sda1
```

`$ sudo /etc/init.d/smbd restart`

## Thiết lập để SAMBA đọc được thiết bị

### Allow the Raspberry Pi to read and interpret exFAT drives

`sudo apt install exfat-fuse | sudo apt install exfat-utils -ys`

> Nếu không setup theo định dạng này thì bỏ qua để không làm giảm tốc độ đọc

### Mounting the Drive to the Raspberry Pi

* Kiểm tra danh sách ổ đĩa: `$ lsblk -f` or `lsblk`
* Format disk (Optional): `sudo mkfs -t ext4 /dev/sdb1`
* Tạo điểm mount: `$ sudo mkdir -p /mnt/sda1`
* Mount: `$ sudo mount /dev/sda1 /mnt/sda1`
* Cấp quyền: `$ sudo chown -R pi:pi /mnt/sda1`

### Cấp riêng quyền đọc ghi cho pi trong folder bất kỳ

`$ sudo chown -R pi:pi /mnt/sda1`

### Kiểm tra phân quyền

`$ ls -l /mnt/sda1`

### Thêm user vào nhóm đã được phân quyền

`$ sudo usermod -aG pi leolion`

### Thêm user khác

`$ sudo useradd leolion`

### Tạo mật khẩu cho user SMB

`$ sudo smbpasswd -a leolion`

### Setup mount ổ đĩa tự động

`$ sudo nano /etc/fstab`

```
UUID=a63e1694-79fe-4d7d-9e69-a9d4f67ce28a /mnt/sda1 ext4 defaults,auto,users,rw,nofail,noatime 0 0
UUID=03055c59-3346-451a-be85-7ac95c4ae633 /mnt/sda2 ext4 defaults,auto,users,rw,nofail,noatime 0 0
UUID=586a5114-39ee-4aae-bc0a-30b6ae315949 /mnt/sda3 ext4 defaults,auto,users,rw,nofail,noatime 0 0
```

{% hint style="warning" %}
Lấy mã UUID theo thông tin trả về trong câu lệnh: `lsblk`
{% endhint %}
