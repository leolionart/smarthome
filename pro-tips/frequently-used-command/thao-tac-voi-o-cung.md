# Thao tác với ổ cứng

## Liệt kê danh sách ổ cứng

Bao gồm tên, điểm mount, dung lượng ổ cứng

`lsblk -o NAME,LABEL,FSTYPE,SIZE,MOUNTPOINT`

1. `lsblk` : Liệt kê thông tin về các thiết bị block (như ổ cứng, ổ đĩa cứng ngoài, v.v.)
2. `fdisk -l` : Xem thông tin phân vùng ổ cứng
3. `df -h` : Hiển thị không gian đĩa sử dụng và còn trống
4. `hdparm -I /dev/sda` : Hiển thị thông tin chi tiết về ổ cứng ATA/SATA như tên model, kích thước, speed v.v
5. `blkid` hoặc `ls -lha /dev/disk/by-uuid`: Hiển thị UUID của các ổ cứng

**Với ổ cứng gắn cổng M2**

1. `nvme list`: Danh sách ổ cứng
2. `nvme smart-log /dev/nvme1n1`: Thông tin chi tiết về 1 ổ cứng

## Format ổ cứng

`sudo mkfs.ext4 /dev/`sdd

## Mount ổ cứng và khởi động cùng với OS

`$ sudo nano /etc/fstab`
