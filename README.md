# Xây dựng Home LAB nhu cầu cơ bản


![](https://egg.d.pr/i/TuTrWz.jpg)
Với niềm yêu thích công nghệ, luôn tìm kiếm giải pháp xoay quanh việc tối ưu các vấn đề thường gặp. Tôi dành thời gian cho dự án cá nhân này để học thêm các kỹ năng liên quan tới lập trình và các công nghệ phổ biến. Hiểu cách các service vận hành cùng với nhau, cách xây dựng cấu trúc dữ liệu, cách tối ưu hoá phần cứng...
<p><img align="center" src="https://github-readme-stats.vercel.app/api/top-langs?username=leolionart&show_icons=true&locale=en&layout=compact" alt="leolionart" /></p>

**Thông tin cấu hình thiết bị sử dụng trong HomeLABS**
| BananaPI | Cấu hình 
|--------------|-------
| CPU | 4 CPU
| RAM | 4G  
| ROM | 32G
| EMMC | 16G

## Đưa thiết bị lên HomeKit

Không một hãng nào có tất cả thiết bị đáp ứng cả 3 tiêu chí rẻ, ổn định, bền bỉ. Mục tiêu của dự án là đưa thiết bị IOT của bất cứ hãng nào lên Apple HomeKit và hoạt động một cách ổn định với chi phí thấp nhất.

### [Hướng dẫn thiết lập Homebridge và Scryted Camera](https://github.com/leolionart/smarthome/wiki/%C4%90%C6%B0a-thi%E1%BA%BFt-b%E1%BB%8B,-camera-l%C3%AAn-Apple-Homekit)

<br><img src="https://egg.d.pr/i/IBIEzi.jpg" width="200">

| Serices | Description
|--------------|-------
| Docker | Dễ dàng cài đặt các dịch vụ được đóng gói sẵn
| Portainer | Quản lý trực quan trên nền tảng web  
| Watchtower |  Tự cập nhật phiên bản cho các dịch vụ trong portainer
| Homebridge | Kết nối thiết bị vào HomeKit
| Scryted | Đưa các camera không hỗ trợ HomeKit lên nền tảng Apple Home


## Hệ thống giải trí miễn phí
![](https://egg.d.pr/i/KB4YQS.jpg)
>Bạn yêu thích nhiều series phim hay chiếu trên nhiều nền tảng khác nhau, mong muốn có thể xem sớm nhất khi được phát hành kể cả là bản CAM. Tôi thiết lập một hệ thống với nhiệm vụ
- Tìm kiếm trên internet về thông tin bộ phim tôi muốn
- Tự tìm link và tải về bằng torrent khi xuất hiện
- Tự nâng cấp bản CAM lên bản chất lượng cao hơn nếu phim hay và tôi muốn giữ lại xem tiếp
- Tự tìm Eng và Việt Sub cho các phim này để khi tôi xem thì có sẵn sub chất lượng
- Thêm phim vào danh sách theo dõi dễ dàng: Xem trailer thích có thể vào Plex add to watchlist là xong

### [Hướng dẫn cài các dịch vụ sưu tập phim](https://github.com/leolionart/smarthome/wiki/MovieHUB)

| Service | Description
|--------------|-------
| Plex | Tự tạo server xem phim ở nhà
| qBittorrent | Tải phim
| Radarr | Quản lí phim lẻ
| Sonarr | Quản lí phim bộ
| Prowlarr | Sẽ tìm nguồn tải phim cho 2 cái trên
| Bazarr | Tự động tải sub việt, sub anh theo tên phim
| Heimdall | Shortcut truy cập các ứng dụng chứ nhiều port quá không nhớ

# HUB backup - Zigbee, Monitoring

**Thông tin cấu hình thiết bị sử dụng trong HomeLABS**
| RaspberryPI | Cấu hình 
|--------------|-------
| CPU | 4 CPU
| RAM | 1G  
| ROM | 16G  

## Home HUB dự phòng & Zigbee HUB
Trong trường hợp hệ thống chính gặp sự cố vẫn cần hệ thống khác khởi động được lên ngay để không làm dán đoạn các hoạt động như mở cửa garage hay hệ thống báo động trong nhà.

### [Hướng dẫn thiết lập HUB đa năng kết nối mọi thiết bị Zigbee](https://github.com/leolionart/smarthome/wiki/L%C3%A0m-HUB-Zigbee-%C4%91a-n%C4%83ng)

| Serices | Description
|--------------|-------
| Docker | Dễ dàng cài đặt các dịch vụ được đóng gói sẵn
| Portainer | Quản lý trực quan trên nền tảng web
| Hombridge | Đưa các thiết bị quan trọng vào một Home khác
| Mqtt Brocker | Nhận event gửi từ các service cần vận hành qua cách này
| Zigbee to Mqtt | Trigger event gửi vào MQTT service

## Theo dõi hệ thống
![](https://egg.d.pr/i/zRDjAi.jpg)
Theo đõi lượng điện tiêu thụ trong nhà, nhiệt độ thu thập từ cảm biến về độ chênh lệch nhiệt độ trong phòng và ngoài trời để tắt điều hoà đúng lúc, hạn chế sử dụng điện không hiệu quả.

### [Hướng dẫn thiết lập dashboard theo dõi tiền điện và nhiệt độ các thiết bị quan trọng](https://github.com/leolionart/smarthome/wiki/Monitor-system-HomeLab)

| Serices | Description
|--------------|-------
| Node-RED | Thiết lập các automation flows, tuỳ biến thêm kịch bản mới
| InfluxDB | Chứa dữ liệu log từ Node-RED gửi về
| Prometheus | Đóng vai trò trigger để collect dữ liệu từ các service lấy dữ liệu. Lưu tạm trên RAM
| Node_exporter | Đọc các chỉ số hệ thống linux (CPU, RAM, Nhiệt độ...)
| SNMP_exporter | Đọc các chỉ số trên Mikrotik (tốc độ mạng, số thiết bị đang kết nối)
| Grafana | Đóng vai trò visually các dữ liệu trên dưới dạng dashboard




<h3 align="left">Connect with me:</h3>
<p align="left">
<a href="https://twitter.com/quangai" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="quangai" height="30" width="40" /></a>
<a href="https://linkedin.com/in/leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="leolion" height="30" width="40" /></a>
<a href="https://fb.com/art.leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="art.leolion" height="30" width="40" /></a>
<a href="https://dribbble.com/leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/dribbble.svg" alt="leolion" height="30" width="40" /></a>
<a href="https://www.behance.net/leolion" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/behance.svg" alt="leolion" height="30" width="40" /></a>
</p>

<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://angular.io" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/angularjs/angularjs-original-wordmark.svg" alt="angularjs" width="40" height="40"/> </a> <a href="https://www.w3schools.com/css/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original-wordmark.svg" alt="css3" width="40" height="40"/> </a> <a href="https://www.docker.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg" alt="docker" width="40" height="40"/> </a> <a href="https://firebase.google.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg" alt="firebase" width="40" height="40"/> </a> <a href="https://grafana.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/grafana/grafana-icon.svg" alt="grafana" width="40" height="40"/> </a> <a href="https://ifttt.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/ifttt/ifttt-ar21.svg" alt="ifttt" width="40" height="40"/> </a> <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg" alt="javascript" width="40" height="40"/> </a> <a href="https://nodejs.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg" alt="nodejs" width="40" height="40"/> </a> <a href="https://www.python.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a> <a href="https://www.typescriptlang.org/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/typescript/typescript-original.svg" alt="typescript" width="40" height="40"/> </a> </p>

<h3 align="left">Support:</h3>
<p><a href="https://www.buymeacoffee.com/leolionart"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="leolionart" /></a></p><br><br>


