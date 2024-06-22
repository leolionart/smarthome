---
description: >-
  Sử dụng thẻ nhớ làm bộ nhớ đệm mở rộng cho RAM, tránh tình trạng lag hệ thống
  khi nhiều dịch vụ phải hoạt động cùng lúc trong thời gian ngắn
---

# Use memory card as RAM

Xem dung lượng ram được sử dụng: `$ htop` hoặc `free --mega`

## Tăng dung lượng RAM

### Disable the swap file:

`sudo dphys-swapfile swapoff`&#x20;

`sudo nano /etc/dphys-swapfile`

#### Khai báo Swapfile

```
SWAP_SIZE=1G && SWAP_FILE=/swapfile && sudo swapoff -a && sudo rm -rf $SWAP_FILE && sudo fallocate -l $SWAP_SIZE $SWAP_FILE && sudo chmod 600 $SWAP_FILE && sudo mkswap $SWAP_FILE && sudo swapon -a
```

### Enable the swap file:

`sudo dphys-swapfile swapon`

### Create a new swap file:

`sudo dphys-swapfile setup`
