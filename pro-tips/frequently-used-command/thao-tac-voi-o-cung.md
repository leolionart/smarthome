# Thao tác với ổ cứng

## Liệt kê danh sách ổ cứng

Bao gồm tên, điểm mount, dung lượng ổ cứng

`lsblk -o NAME,LABEL,FSTYPE,SIZE,MOUNTPOINT`

1. `lsblk` : Liệt kê thông tin về các thiết bị block (như ổ cứng, ổ đĩa cứng ngoài, v.v.)
2. `fdisk -l` : Xem thông tin phân vùng ổ cứng
3. `df -h` : Hiển thị không gian đĩa sử dụng và còn trống
4. `hdparm -I /dev/sda` : Hiển thị thông tin chi tiết về ổ cứng ATA/SATA như tên model, kích thước, speed v.v
5. `blkid` : Hiển thị UUID của các ổ cứng:

**Với ổ cứng gắn cổng M2**

1. `nvme list`: Danh sách ổ cứng
2. `nvme smart-log /dev/nvme1n1`: Thông tin chi tiết về 1 ổ cứng

## Format ổ cứng



## Mount ổ cứng và khởi động cùng với OS

`$ sudo nano /etc/fstab`

```
UUID=a63e1694-79fe-4d7d-9e69-a9d4f67ce28a /mnt/sda1 ext4 defaults,auto,users,rw,nofail,noatime 0 0
UUID=03055c59-3346-451a-be85-7ac95c4ae633 /mnt/sda2 ext4 defaults,auto,users,rw,nofail,noatime 0 0
UUID=586a5114-39ee-4aae-bc0a-30b6ae315949 /mnt/sda3 ext4 defaults,auto,users,rw,nofail,noatime 0 0
```
