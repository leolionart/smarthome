# Thao tác với Docker

### Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages:

$ sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

### Xóa hình ảnh, containers, volumes hoặc tệp cấu hình tùy chỉnh trên máy chủ:

```
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
```

### Dừng và xoá tất cả containers

```
docker ps -a
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```
