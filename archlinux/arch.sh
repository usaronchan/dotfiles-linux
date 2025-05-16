dotfiles_dit=~/repos/dotfiles-linux
# 更新本机的镜像列表
sudo bash $dotfiles_dit/arch/mirror.sh
# 清理本机。主要是清理日志和缓存，腾出存储空间
sudo bash $dotfiles_dit/arch/clean.sh

# 需要安装 pacman-contrib
# 显示可以更新的软件和对应的版本号
checkupdates


uptime -p

# 命令行浏览网页
# 比如浏览arch linux的官网
w3m archlinux.org


# 时间设置
# 系统时间与网络时间同步
sudo timedatectl set-ntp true
# 检查服务状态
timedatectl status

################## v2ray ##################
# 开启v2ray服务
sudo systemctl start v2ray
# 设置每次启动机器自动启动v2ray
sudo systemctl enable v2ray
# 查看v2ray的运行状态
sudo systemctl status v2ray

# 停止v2ray的运行
sudo systemctl stop v2ray







ffmpeg -i input.ts -c:v libx264 -c:a aac -strict experimental output.mp4


####################################################
# 2024-11-26
# 目前在Arch基于jekyll的构建是失败的
# Website
sudo pacman -S ruby rubygems

# homebrew
# 没有成功过，需要找镜像站




sudo pacman -S lsb-release
lsb_release -a




############## 配置 archlinuxcn ##############
sudo vim /etc/pacman.conf
# 添加以下内容
[archlinuxcn]
Server = https://mirrors.aliyun.com/archlinuxcn/$arch

# 在 /etc/pacman.conf 设置好镜像后
# 导入gpg密钥
sudo pacman -Sy archlinuxcn-keyring

sudo pacman -Su archlinuxcn-mirrorlist-git


