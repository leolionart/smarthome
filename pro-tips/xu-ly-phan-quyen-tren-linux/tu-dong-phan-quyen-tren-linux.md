# Tự động phân quyền trên linux

Vấn đề nảy sinh khi Linux chỉ trao quyền sở hữu file hoặc thư mục cho một user duy nhất: `www-data` (user của Apache) hoặc username (user của developer).

Ví dụ: Mình đăng nhập vào hệ thống bằng username thuanbui, và tạo một file mới tên “NEW.php” trong thư mục `/var/www/website.com/public`. File mới này sẽ tự động được phân quyền sở hữu cho user thuanbui.

* Mình có thể chỉnh sửa code thoải mái trên file này nhưng Web Server sẽ không thể chỉnh sửa trực tiếp file này được do không có quyền.
* Nếu mình chuyển quyền quản lý file NEW.php cho user www-data, vấn đề bị đảo ngược: Web Server có thể chỉnh sửa file được nhưng user thuanbui không thể chỉnh sửa được file khi truy cập qua SFTP.

Bạn có thể tuỳ chỉnh phân quyền riêng cho mỗi file và thư mục nhất định tuỳ vào mục đích. Tuy nhiên, về lâu dài, sẽ rất khó quản lý việc phân quyền và rất dễ gây lỗi với trang web/ ứng dụng web của bạn.



## Cách giải quyết: bindfs

Sau nhiều ngày tìm kiếm giải phát trên Google và mò thử nhiều cách khác nhau, cuối cùng mình đã tìm được phương pháp tốt nhất để giải quyết vấn đề: sử dụng **bindfs**. Bài viết gốc các bạn có thể xem ở đây: [Netgusto](http://blog.netgusto.com/solving-web-file-permissions-problem-once-and-for-all)

Khu dùng bindfs, thư mục gốc của ứng dụng web được giả lập làm một thư mục con trong thư mục home của bạn (`/home/username`). Do đó, bạn có toàn quyền chỉnh sửa, tạo mới và xoá file, trong khi thực sự nó vẫn thuộc quyền sở hữu của web server (`www-data`).

Giải thích e rằng hơi khó hiểu. Đi vào chi tiết luôn cho trực quan nhé. Không cần hiểu sâu lắm, chỉ cần giải quyết được vấn đề là được rồi.

**Cài đặt**

Cách này chỉ áp dụng cho Ubuntu/Debian.

Trong hướng dẫn dưới đây, username của mình sử dụng là `thuanbui`, thư mục web nằm ở `/var/www/thuanbui.me`

```bash
# Cài Đặt bindfs (chỉ làm 1 lần duy nhất)
thuanbui@opodis $ sudo apt-get update  
thuanbui@opodis $ sudo apt-get -y install bindfs

# Tạo thư mục giả lập
thuanbui@opodis $ sudo mkdir -p /home/leolion/www/thuanbui.me  
thuanbui@opodis $ sudo chown -Rf thuanbui:thuanbui /home/thuanbui/www/thuanbui.me  Code language: Bash (bash)
```

Sau đó, chỉnh sửa file `nano /etc/fstab` và thêm dòng này vào cuối file. Nhớ đổi lại đường dẫn và tên username thuanbui sang thông tin của bạn

```
bindfs#/var/www/thuanbui.me /home/thuanbui/www/thuanbui.me fuse force-user=thuanbui,force-group=thuanbui,create-for-user=www-data,create-for-group=www-data,create-with-perms=0770,chgrp-ignore,chown-ignore,chmod-ignore 0 0  
```

Lưu file và làm tiếp bước giả lập hệ thống file

```css
thuanbui@opodis $ mount /home/thuanbui/www/thuanbui.meCode language: CSS (css)
```

## **Kiểm tra**

Kiểm tra xem hệ thống có hoạt động như mong muốn không.

Tạo file mới trong thư mục /home

```javascript
thuanbui@opodis:~/www/thuanbui.me$ su thuanbui
Password: 
thuanbui@opodis:~/www/thuanbui.me$ cd /home/thuanbui/www/thuanbui.me
thuanbui@opodis:~/www/thuanbui.me$ touch hello.txtCode language: JavaScript (javascript)
```

Kiểm tra phân quyền file mới tạo trong thư mục giả lập /home/thuanbui

```yaml
thuanbui@opodis:~/www/thuanbui.me$ ls -l hello.txt
-rwxrwx--- 1 thuanbui thuanbui 0 Jan  5 05:42 hello.txtCode language: YAML (yaml)
```

Kiểm tra phân quyền file mới tạo trong thư mục của ứng dụng web /var/www/thuanbui.me

```javascript
thuanbui@opodis:~/www/thuanbui.me$ cd /var/www/thuanbui.me
thuanbui@opodis:/var/www$ ls -l hello.txt
-rwxrwx--- 1 www-data www-data 0 Jan  5 05:42 hello.txt
thuanbui@opodis:/var/www$ Code language: JavaScript (javascript)
```

File hello.txt được tạo bằng tài khoản `thuanbui`, nhưng nó đã được tự động phân quyền sở hữu cho `www-data` .

Hoạt động ngon lành rồi!

Từ giờ bạn có thể thoải mái tạo và chỉnh sửa file mới trong thư mục giả lập, tất cả sẽ được tự động phân quyền sở hữu cho `www-data`, user của web server. Không sợ bị dính lỗi phân quyền khi truy cập ứng dụng web nữa.
