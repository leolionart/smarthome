# Adguard Home: Sửa lỗi fail to bind on port 53

Nhiều khả năng khi thiết lập AdGuard Home trên Ubuntu, bạn sẽ bị báo lỗi fail to bind on port 53. Lý do là vì đã có dịch vụ systemd-resolved đang sử dụng port 53 này. Bạn tắt dịch vụ này đi và deploy lại là được.

`sudo mkdir -p /etc/systemd/resolved.conf.d/`&#x20;

`sudo nano /etc/systemd/resolved.conf.d/adguardhome.conf`&#x20;

Code language: Nginx (nginx) Điền vào nội dung sau

`[Resolve] DNS=127.0.0.1 DNSStubListener=no`&#x20;

Bấm CTRL + O để lưu lại và bấm CTRL + X để thoát ra

Tiếp theo chạy lệnh này để cập nhật thông số và khởi động lại systemd-resolved

`sudo mv /etc/resolv.conf /etc/resolv.conf.backup`&#x20;

`sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf sudo systemctl restart systemd-resolved`&#x20;

Code language: Dockerfile (dockerfile) Port 53 giờ đã được trả tự do để AdGuard Home sử dụng. Bạn có thể kiểm tra lại bằng lệnh

`sudo lsof -i :53`&#x20;

Code language: CSS (css) Nếu không thấy kết quả nào trả lại nghĩa là port 53 đã được tự do.
