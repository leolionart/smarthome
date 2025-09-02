#!/bin/bash

# Mount gdrive
/usr/bin/rclone mount gdrive:/ /volume2/DATA/rclone/gdrive \
--allow-other \
--allow-non-empty \
--file-perms 0777 \
--dir-perms 0777 \
--umask 000 \
--vfs-cache-mode full \
--dir-cache-time 24h \
--vfs-cache-max-age 75h \
--vfs-cache-max-size 500G \
--vfs-read-chunk-size 64M \
--vfs-read-chunk-size-limit 1G \
--buffer-size 32M \
--cache-dir=/volume2/DATA/rclone/cache \
--log-level INFO \
--log-file /volume2/DATA/rclone/rclone-gdrive.log &

# Mount drive
/usr/bin/rclone mount drive:/ /volume2/DATA/rclone/drive \
--allow-other \
--allow-non-empty \
--file-perms 0777 \
--dir-perms 0777 \
--umask 000 \
--vfs-cache-mode full \
--dir-cache-time 24h \
--vfs-cache-max-age 75h \
--vfs-cache-max-size 500G \
--vfs-read-chunk-size 64M \
--vfs-read-chunk-size-limit 1G \
--buffer-size 32M \
--cache-dir=/volume2/DATA/rclone/cache \
--log-level INFO \
--log-file /volume2/DATA/rclone/rclone-drive.log &
