# linux_settings
The script of installing favourite packages and configurations for Debian OS  

```bash
install.sh (gui)
```

**Contents**
- vim (w/ plugins)
- tmux
- htop
- curl
- sublimetext
- python-pip
- zsh (w/ oh-my-zsh)
- xclip
- korean keyboard (uim)


**Final test version**
- Ubuntu 16.04 LTS
- Ubuntu 18.04.5 LTS

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
