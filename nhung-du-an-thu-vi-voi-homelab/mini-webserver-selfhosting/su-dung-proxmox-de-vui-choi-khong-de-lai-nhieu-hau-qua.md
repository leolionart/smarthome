# Sử dụng Proxmox để vui chơi không để lại nhiều hậu quả

## Ideas/Mục tiêu

* Tận dụng tối đa phần cứng mạnh mẽ đang có để làm nhiều thứ, chạy nhiều hệ điều hành trên đó, quản lý được tài nguyên phần cứng tốt
* Lỡ có làm hư hỏng hệ điều hành thì có thể restore lại nhanh, hoặc chuyển đổi hệ điều hành qua một ổ cứng khác nhanh chóng

## Phương pháp thực hiện

Bạn cần tải file ISO của Proxmox về máy tính: [Proxmox VE 71. ISO Installer](https://www.proxmox.com/en/downloads/item/proxmox-ve-7-1-iso-installer) (986 MB)

#### 1. Cài lên máy vật lý

Để cài đặt Proxmox lên máy tính vật lý, bạn cần tạo bản cài đặt Proxmox trên ổ đĩa USB, sử dụng [Rufus](https://rufus.ie/vi/) (Win) hoặc [Etcher](https://www.balena.io/etcher/) (Win / Mac).

Nếu sử dụng Rufus để tạo USB, bạn lưu ý cần phải chọn chế độ DD mode thì sau đó Proxmox mới boot được khi khởi động.

Sau khi ổ đĩa USB sẵn sàng, bạn cắm nó vào máy tính đang chờ cài đặt Proxmox. Chỉnh lại BIOS chọn khởi động từ USB để kích hoạt trình cài đặt Proxmox VE.



Sau khi tạo máy ảo, bạn chọn file ISO Proxmox đã tạo ở trên làm ổ đĩa quang khởi động cho máy ảo và làm tiếp theo các bước bên dưới đây

### III. Cài đặt Proxmox VE

Quy trình cài đặt Proxmox VE nói chung là trực quan đơn giản. Nếu bạn đã quen cài Ubuntu, Debian thì sẽ thấy nó quen thuộc.

Sau khi khởi động máy tính từ USB, trình cài đặt Proxmox sẽ hiện ra. Chọn Install Proxmox VE

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-1.jpg" alt=""><figcaption></figcaption></figure>

Chọn I agree

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-2-1200x903.jpg" alt=""><figcaption></figcaption></figure>

Nếu máy tính có nhiều ổ đĩa cứng, bạn chọn ổ cứng muốn cài Proxmox ở đây, ròi bấm Next. Nếu muốn thiết lập nâng cao, bấm vào nút Options để điều chỉnh thông số.

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-3.jpg" alt=""><figcaption></figcaption></figure>

Sau khi bấm vào Options, bạn có thể thay đổi Filesystem: ext4, xfs, zfs,… Mặc định Proxmox sẽ dùng ext4

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-4.jpg" alt=""><figcaption></figcaption></figure>

Bạn có thể chỉnh thêm các thông số swapsize, maxroot, minfree, maxvz. [Xem chi tiết ở đây](https://pve.proxmox.com/wiki/Installation). Nếu bạn chỉ mới làm quen, hãy để trống để Proxmox tự xử lý.

Bấm OK để tắt hộp thoại Harddisk options và bấm Next.

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-5.jpg" alt=""><figcaption></figcaption></figure>

Chọn Country, Timezeon và Keyboard layout, rồi bấm Next

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-6.jpg" alt=""><figcaption></figcaption></figure>

Nhập mật khẩu cho tài khoản root và địa chỉ email. Bấm Next

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-7.jpg" alt=""><figcaption></figcaption></figure>

Thiết lập địa chỉ IP tĩnh cho máy Proxmox. Rồi bấm Next

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-8.jpg" alt=""><figcaption></figcaption></figure>

Bấm chọn Automatically reboot after successful installation để máy tính tự khởi động lại sau khi cài xong. Bấm Install để bắt đầu cài đặt Proxmox lên đĩa cứng

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-9.jpg" alt=""><figcaption></figcaption></figure>

Quá trình cài đặt sẽ kéo dài khoảng 5-10 phút tuỳ vào cấu hình máy.

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-10.jpg" alt=""><figcaption></figcaption></figure>

Sau khi cài đặt xong, máy tính sẽ tự khởi động lại và boot vào giao diện dòng lệnh của Proxmox.

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-11.jpg" alt=""><figcaption></figcaption></figure>

Bạn có thể đăng nhập bằng thông tin sau:

* login: root
* password: mật khẩu bạn đã thiết lập ở bước cài đặt

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-12.jpg" alt=""><figcaption></figcaption></figure>

### IV. Truy cập Proxmox Web UI

Để quản lý Proxmox, chúng ta sẽ sử dụng trình duyệt web truy cập vào giao diện Web UI theo địa chỉ IP đã thiết lập ở bước cài đặt kèm theo port 8006. Mình sẽ truy cập vào địa chỉ: `https://192.168.0.15:8006`

Đăng nhập bằng tài khoản root và mật khẩu bạn đã thiết lập trước đó. Bấm Login

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-13.jpg" alt=""><figcaption></figcaption></figure>

Proxmox sẽ hiện thông báo bạn chưa đăng ký gói thuê bao. Bấm OK để bỏ qua.

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-14.jpg" alt=""><figcaption></figcaption></figure>

Đây là giao diện của Proxmox VE 7.1

<figure><img src="https://thuanbui.me/wp-content/uploads/2022/01/cai-dat-proxmox-15.jpg" alt=""><figcaption></figcaption></figure>

\
