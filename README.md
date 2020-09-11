# linux_settings
The script of installing favourite packages and configurations for Debian OS  

```bash
./install.sh (gui)
```

**Contents**
- vim (w/ Vundle plugins)
- tmux
- htop
- curl
- python-pip
- zsh (w/ oh-my-zsh)
- korean keyboard (uim)

**Contents (+gui)**
- guake
- sublimetext
- xclip

**Final test version**
- Ubuntu 16.04 LTS
- Ubuntu 18.04.5 LTS

## Installing procedure
- update mirror server (korea)
- git install
- download script
- execute install.sh
- execute vim --> :BundleInstall

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
