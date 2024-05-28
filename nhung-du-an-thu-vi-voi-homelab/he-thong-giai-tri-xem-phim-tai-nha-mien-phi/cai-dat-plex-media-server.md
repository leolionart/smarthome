# Cài đặt Plex Media Server

1. `sudo apt-get install apt-transport-https`
2. `curl` [`https://downloads.plex.tv/plex-keys/PlexSign.key`](https://www.youtube.com/redirect?event=comments\&redir\_token=QUFFLUhqbTJrcEtVbE5nQ2RTUlJFSk1aYWNFVWQ4eEY0UXxBQ3Jtc0tsNTdwOWxvWGVyMHd4dEdnMG41Y0Q4dEl1ZWVnQUNaVzhYY29nRGRMSWhGYkZUQjQwcmFwMXgwRURySDNsQWxPV0NFWkVZWmtwNjFsSVRzeXJmaTF1am5ZMU84X20xM3FSNDZqa0RISXZkb3dsSFh4OA\&q=https%3A%2F%2Fdownloads.plex.tv%2Fplex-keys%2FPlexSign.key\&stzid=UgxyEKE5vGNVFKSqi-F4AaABAg) `| sudo apt-key add - echo deb` [`https://downloads.plex.tv/repo/deb`](https://www.youtube.com/redirect?event=comments\&redir\_token=QUFFLUhqa2RCcjE3cEg1eGZPUndmR25xMW9lX21nOWtZd3xBQ3Jtc0tuTDdVa0xIc2RsVWtab0U1RmZmZWIwSVdJT3hkMXFTdjVocjVnTDQ3dUl6bncxN2JDT211YnMyWE1nWEtvT05NVl9nWnNSbkFjNGtFSDcyamI4QS13WVJSSjNzZ3BMa0dPWmpka29POWpodVdudUY2VQ\&q=https%3A%2F%2Fdownloads.plex.tv%2Frepo%2Fdeb\&stzid=UgxyEKE5vGNVFKSqi-F4AaABAg) `public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list`
3. `sudo apt-get update`
4. `sudo apt-get install plexmediaserver`
5. `sudo systemctl restart plexmediaserver`

{% hint style="danger" %}
PLEX server phải được cài cùng thiết bị có gắn ổ cứng thì mới có thể phát huy được khả năng sử dụng, còn không sẽ không thể truyền dữ liệu lên được.
{% endhint %}

Quick-Start & Step by Step Guides for Plex Media Server : [https://support.plex.tv/articles/200264746-quick-start-step-by-step-guides/](https://support.plex.tv/articles/200264746-quick-start-step-by-step-guides/)
