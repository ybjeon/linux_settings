# linux_settings
The script for installing favourite packages for Debian OS

## Installing procedure
- git install
- download script
- execute install.sh


## Korea Mirror Server
### APT update list
```bash
sudo vi /etc/apt/sources.list
:%s/kr.archive.ubuntu.com/ftp.daumkakao.com
```
### Python pip
```bash
sudo vi ~/.pip/pip.conf
```
copy and paste
```
[global]
index-url=http://ftp.daumkakao.com/pypi/simple
trusted-host=ftp.daumkakao.com
```
