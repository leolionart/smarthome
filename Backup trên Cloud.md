[Tham khảo hướng dẫn Mega](https://github.com/meganz/MEGAcmd/blob/master/UserGuide.md)



# Cài backup ổ đĩa
Hiện danh sách ổ đĩa: `df -h`
```
cd ~
git clone https://github.com/lzkelley/bkup_rpimage.git
```

## Cài làm nhẹ file backup
```
wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
chmod +x pishrink.sh
sudo mv pishrink.sh /usr/local/bin
```


Fix lỗi thiếu package ở bản arm64: [Nguồn tham khảo](https://nerd-tech.net/2021/09/06/how-to-install-and-update-mega-command-line-megacmd-on-your-raspberry-pi-running-ubuntu-20-04/)

```
$ wget https://mega.nz/linux/repo/Raspbian_10.0/Release.key && sudo apt-key add Release.key
$ sudo dpkg --add-architecture armhf
$ sudo nano /etc/apt/sources.list.d/mega.nz.list
```

# Install mega-sync:
`sudo apt update && sudo apt install megacmd`

## Login vào Mega
`mega-login Email PASS`
## Cài đặt đồng bộ
`mega-sync /mnt/sda1/Backup /Backup`

- Xem log: `mega-cmd-server --debug-full | tee megacmd.log`
- Cấp quyền ghi: `sudo chmod 775 /mnt/sda1/Backup`

## Chạy backup
```
sudo sh bkup_rpimage/bkup_rpimage.sh start -c /mnt/sda1/Backup/BPI-Backup-$(date +%Y-%m-%d).img & sudo pishrink.sh /mnt/sda1/Backup/BPI-Backup-$(date +%Y-%m-%d).img
```
1. Backup từ script của git
2. Loại bỏ phần dư thừa làm nhẹ file

## Quản lý file trên Mega
```
mega-ls
mega-rm -r -f /Backup/BPI-Backup-$(date -d "7 days ago" +%Y-%m-%d).img
```