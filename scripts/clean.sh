# 查看日志大小
sudo journalctl --disk-usage

# 日志超过5天自动删除
sudo journalctl --vacuum-time=5d
# 日志超过50M自动删除
sudo journalctl --vacuum-size=50M

# 清理软件包缓存
sudo pacman -Scc --noconfirm

# paccache脚本默认情况下会删除已安装和未安装包的所有缓存版本，但最近 3 个版本除外
# yes | sudo pacman -S pacman-contrib
paccache -r

# Use yay to clean
yay -Scc --noconfirm






# 释放Docker内存空间
# 清理停止的容器、未使用的网络、所有未被使用的镜像以及构建缓存，而不会弹出确认提示
# docker system prune -a -f
# 删除所有未被任何容器使用的卷
# docker volume prune -f

# 删除所有容器
# podman rm -a
# 删除所有镜像
# podman rmi -a

