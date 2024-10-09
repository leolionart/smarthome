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

<pre><code>UUID=a63e1694-79fe-4d7d-9e69-a9d4f67ce28a /mnt/sda1 ext4 defaults,auto,users,rw,nofail,noatime 0 0
UUID=03055c59-3346-451a-be85-7ac95c4ae633 /mnt/sda2 ext4 defaults,auto,users,rw,nofail,noatime 0 0
<strong>UUID=586a5114-39ee-4aae-bc0a-30b6ae315949 /mnt/sda3 ext4 defaults,auto,users,rw,nofail,noatime 0 0
</strong><strong>UUID=fba61038-e998-4254-b795-519716f393d4 /mnt/sda4 ext4 defaults,auto,users,rw,nofail,noatime 0 0
</strong></code></pre>

{% hint style="warning" %}
Lấy mã UUID theo thông tin trả về trong câu lệnh: `lsblk -f`
{% endhint %}

## Cài đặt NAS để có thể backup được time machine

`sudo apt-get install samba avahi-daemon`

Cần bổ sung cấu hình file samba để support định dạng time machine hiểu được

`sudo nano /etc/samba/smb.conf`

```
[Backup]
path = /mnt/sda4
fruit:time machine = yes
vfs objects = catia fruit streams_xattr
writeable = yes
guest ok = yes
create mask = 0777
directory mask = 0777
```

### Reload lại samba

`sudo service smbd reload`

### Configuring Avahi deamon <a href="#ba2a" id="ba2a"></a>

In order to let MacOS automatically detect our new Time Machine we’ll need to configure Avahi. For that edit the following file:

```
sudo nano /etc/avahi/services/samba.service
```

And paste this configuration in:

```
<?xml version="1.0" standalone='no'?><!--*-nxml-*-->
<!DOCTYPE service-group SYSTEM "avahi-service.dtd">
<service-group>
  <name replace-wildcards="yes">%h</name>
  <service>
    <type>_smb._tcp</type>
    <port>445</port>
  </service>
  <service>
    <type>_device-info._tcp</type>
    <port>9</port>
    <txt-record>model=TimeCapsule8,119</txt-record>
  </service>
  <service>
    <type>_adisk._tcp</type>
    <port>9</port>
    <txt-record>dk0=adVN=backups,adVF=0x82</txt-record>
    <txt-record>sys=adVF=0x100</txt-record>
  </service>
</service-group>
```

With this we tell MacOS that in fact our Raspberry Pi is a 8th Gen Time Capsule and it will appear like one in the sidebar in Finder.

<figure><img src="https://miro.medium.com/v2/resize:fit:1400/1*24f0i0bNxndq8gDng-qyFg.png" alt="" height="449" width="700"><figcaption></figcaption></figure>

### Restart Avahi daemon: <a href="#c232" id="c232"></a>

```
sudo service avahi-daemon restart
```

### Automated start of the services <a href="#id-4feb" id="id-4feb"></a>

We need to edit crontab with:

```
sudo crontab -e
```

We’ll mount the USB drive and start the needed services on a boot/reboot:

```
@reboot sleep 30 && mount /mnt/sda4 && sleep 30 && umount /mnt/sda4 && sleep 30 && mount /mnt/sda4 && sleep 30 && service avahi-daemon start && service smbd start
```
