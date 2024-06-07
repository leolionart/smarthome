# Gắn thêm ổ cứng cho Proxmox

{% embed url="https://youtu.be/tKD-dgSKBxU?si=9tM8X5SfH0G1K3jF" %}

## Passthrought

<pre><code><strong>ls -l /dev/disk/by-id/
</strong></code></pre>

Set HDD to VM

```
qm set 100 -scsi5 /dev/disk/by-id/ata-xxxxxxxxx-xxxxx_xxx
```

\
