---
description: >-
  Sử dụng thẻ nhớ làm bộ nhớ đệm mở rộng cho RAM, tránh tình trạng lag hệ thống
  khi nhiều dịch vụ phải hoạt động cùng lúc trong thời gian ngắn
cover: >-
  https://images.unsplash.com/photo-1592664474505-51c549ad15c5?crop=entropy&cs=srgb&fm=jpg&ixid=M3wxOTcwMjR8MHwxfHNlYXJjaHwxfHxSQU18ZW58MHx8fHwxNzE5MDM4NzQ1fDA&ixlib=rb-4.0.3&q=85
coverY: 0
---

# Use memory card as RAM

Xem dung lượng ram được sử dụng: `$ htop` hoặc `free --mega`

<figure><img src="../../wiki/.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>

## Tăng dung lượng RAM

### Disable the swap file:

`sudo dphys-swapfile swapoff`

`sudo nano /etc/dphys-swapfile`

#### Khai báo Swapfile

```
SWAP_SIZE=1G && SWAP_FILE=/swapfile && sudo swapoff -a && sudo rm -rf $SWAP_FILE && sudo fallocate -l $SWAP_SIZE $SWAP_FILE && sudo chmod 600 $SWAP_FILE && sudo mkswap $SWAP_FILE && sudo swapon -a
```

### Enable the swap file:

`sudo dphys-swapfile swapon`

### Create a new swap file:

`sudo dphys-swapfile setup`
