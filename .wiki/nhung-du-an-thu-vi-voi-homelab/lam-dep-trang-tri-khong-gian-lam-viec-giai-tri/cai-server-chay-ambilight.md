# Cài server chạy Ambilight

## First we import the public key from Hyperion:

`wget https://apt.hyperion-project.org/hyperion.pub.key | sudo gpg --dearmor -o /usr/share/keyrings/hyperion.pub.gpg`

## After that we enter Hyperion-Project as source of Hyperion:

`echo "deb [signed-by=/usr/share/keyrings/hyperion.pub.gpg] https://apt.hyperion-project.org/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hyperion.list`

## Last, we update the package list and install Hyperion:

`sudo apt-get update && sudo apt-get install hyperion https://www.youtube.com/watch?v=f9EFYBNnLPw&lc=UgxhUGfM12CVyY1yvp54AaABAg.9gnbuYkL1xe9gpOT8Q4Gsr`

```
https://apt.hyperion-project.org
---> Hyperion has been installed!
---> 
---> Hyperion has been installed as service, it will start on each system startup
---> For configuration, visit with your browser: 192.168.2.179:8090
---> or if already used by another service try: 192.168.2.179:8091
Please reboot your Raspberry Pi, we inserted dtparam=spi=on to /boot/config.txt
```

Gõ lệnh để bắt đầu: `sudo /usr/bin/hyperiond /etc/hyperion/hyperion.config.json`
