


# 国外可以拉取源码自己编译使用
# sudo pacman -S git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# 国内直接安装二进制可执行文件即可
cd ~
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
# 不要拉取源码自己编译，源码是go仓库的，需要挂代理

# 更新
yay
yay -Syu

# 清理
yay -Scc

# 搜索
yay -Ss <package>

# 安装
yay -S <package>

# 卸载
yay -R <package>


# 卸载所有已安装的 <package>
# 注意：卸载后依然存在在 /var/cache/pacman/pkg 目录下
yay -Rs <package>


yay -S v2rayn-bin
yay -S google-chrome


# Swift需要使用yay进行安装
yay -S swift-bin




