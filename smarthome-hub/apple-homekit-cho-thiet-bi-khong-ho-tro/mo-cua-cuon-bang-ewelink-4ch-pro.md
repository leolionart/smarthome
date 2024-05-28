# Mở cửa cuốn bằng eWeLink 4CH Pro

**Có 2 phương án để kết nối điều khiển cửa cuốn**

1. Thay công tắc đóng mở cửa cuốn (đơn giản nhất)
2. Vẫn giữ công tắc cũ, lắp đặt thêm thiết bị song song

Ở đây mình không muốn khoan đục tường gây mất thẩm mỹ nên chọn phương án đấu điện song song. Thiết bị mình chọn là 4CH Pro để cấu hình được nhiều kiểu theo mình mong muốn, và có thể kết nối được remote điều kiển cửa cuốn thẳng vào thiết bị này cho người lớn trong nhà sử dụng kiểu truyền thống. Các bạn có thể sử dụng phương án khác, nguyên tắc kết nối tương tự.

## Kết nối đường dây điện (phần cứng)

<figure><img src="../../.gitbook/assets/image (1).png" alt=""><figcaption><p>Sơ đồ mạch điện, bạn mở ra nhớ kỹ màu sắc dây để biết dây nào L/N/D</p></figcaption></figure>

{% embed url="http://noha.vn/dieu-khien-cua-cuon-bang-cong-tac-sonoff-tx-3-nut/" %}
Hướng dẫn chi tiết
{% endembed %}

## Kết nối phần mềm

Sau khi thực hiện cấu hình thành công để điều khiển cửa cuốn bằng app Ewelink. Sau đây là các bước để đưa thiết bị từ Ewelink (sonoff) lên Apple Home

1. Truy cập homebridge > plugin
2. Cài plugin ewelink [https://github.com/bwp91/homebridge-ewelink](https://github.com/bwp91/homebridge-ewelink#readme)
3. Thiết lập plugin\
   ![](<../../.gitbook/assets/image (2).png>)
4. Mở ứng dụng Apple Home > Thêm thiết bị. Hệ thống tự động hiển thị new connection, chọn kết nối và nhập mã trên HomeBridge

> Sau khi thiết lập bước trên, các thiết bị bạn thêm vào Ewelink sau này sẽ tự động xuất hiện trên Apple Home. Tuy nhiên sẽ có trường hợp bạn muốn thay đổi Loại thiết bị trên Apple Home để tận dụng tối đa tính năng hoặc đơn giản trông đẹp hơn. Sử dụng Plugin này để giả lập loại thiết bị nhé
