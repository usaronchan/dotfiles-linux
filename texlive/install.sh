
######## 网络环境比较好的时候使用在线安装 Online install ########

# 阿里云镜像源
cd ~/repos/dotfiles-linux/texlive
wget -q https://mirrors.aliyun.com/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xzf install-tl-unx.tar.gz && rm -f install-tl-unx.tar.gz
./install-tl-*/install-tl --profile=texlive.profile --repository=https://mirrors.aliyun.com/CTAN/systems/texlive/tlnet
rm -rf install-tl-*

# 额外安装字体（英文和中文）
tlmgr install tex-gyre droid cm-unicode roboto junicode lm qualitype arphic-ttf fandol --repository https://mirrors.aliyun.com/CTAN/systems/texlive/tlnet
# 字体配置
# 必须安装fontconfig才能使用fc-cache
sudo pacman -S --noconfirm fontconfig
mkdir -p ~/.fonts.conf.d
cp ~/texlive/2025/texmf-var/fonts/conf/texlive-fontconfig.conf ~/.fonts.conf.d/09-texlive.conf

# 更新字体数据库
luaotfload-tool --update
# 重新生成字体缓存
fc-cache -fv

# env
# 配置环境(也可以直接使用.bashrc，注意这里是使用bash进行操作的)
echo '' >> ~/.bashrc
echo '# TeX Live 2025' >> ~/.bashrc
echo 'export PATH=/home/texlive/2025/bin/x86_64-linux:$PATH' >> ~/.bashrc
echo 'export MANPATH=/home/texlive/2025/texmf-dist/doc/man:$MANPATH' >> ~/.bashrc
echo 'export INFOPATH=/home/texlive/2025/texmf-dist/doc/info:$INFOPATH' >> ~/.bashrc
echo '' >> ~/.bashrc
source ~/.bashrc



# Check version
tex -v && latex -v && bibtex -v && xetex -v && pdftex -v && luatex -v && latexmk -v
tlmgr --version
texconfig --version

############################ 虚拟机上的命令行安装界面 ############################
# 要安装下面这个包，才能使用tex -v进行检查
sudo apt-get -y install texlive-binaries
# xelatex检查需要安装字体配置
yes | sudo pacman -S fontconfig
tex -v && latex -v && xelatex -v && pdflatex -v && lualatex -v
# 检查texlive安装没问题后，进行更新字体信息。要注意路径（如果不是安装在/home目录下的话）
sudo mkdir -p /etc/fonts/conf.d
cp ~/texlive/2024/texmf-var/fonts/conf/texlive-fontconfig.conf ~/.fonts.conf.d/09-texlive.conf
fc-cache -fv
cd /etc/fonts/conf.d
# 这个软件包是为下一个命令服务的
sudo apt-get -y install fontconfig xfonts-utils
# 刷新字体
sudo fc-cache -fsv

############################ Arch Linux CLI安装界面 ############################
# 首先要确保/mnt目录是属于当前用户的
cd / && sudo chown chan /mnt
code /mnt

# Download ISO file
sudo wget https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/texlive2025.iso
md5sum texlive2025.iso

# 挂载iso文件
sudo mkdir -p /mnt/iso && sudo mount -o loop texlive2025.iso /mnt/iso
# 验证是否挂载成功（如果显示文件内容即成功）
# sudo ls -l /mnt/iso/

# 启动CLI安装程序
# 便携式安装
# perl /mnt/iso/install-tl -portable
# 按照配置文件进行安装
perl /mnt/iso/install-tl --profile=texlive.profile
# 进入安装选项页面
# Install Path: ~/texlive/2025
# language: Chinese, CJK, English(US and UK)
# Remove package scheme: ConTeXt, Games, Humanities, Music, Publisher, TeXworks editor, Windows-only
# Remove fonts, please install needed font packages
# c -> klmnopstuvwxyzABC -> lmp -> dijSIM -> ef -> r
# -> d -> 1 -> r
# -> o -> d -> s -> r
# -> i -> 回车开始安装
# 安装完退出当前目录，并取消挂载
sudo umount -f /mnt/iso
# 配置texlive的环境变量

############################ WSL图形化安装界面 ############################
cd /mnt/d # 进入win10的d盘（当然下好的texlive.iso也要放在d盘根目录）
md5sum texlive2025.iso # 主要是验证这个文件是不是完整的（一般情况都没问题，这一步不是很必要）
# 安装图像化界面必备的perl-tk组件，中途需要y继续
sudo apt install -y perl-tk tk
# win10把texlive挂载起来，一般为E盘
# 挂载虚拟光驱E到/mnt
sudo mount -t drvfs E: /mnt
# cd ~/iso

# 从图形界面安装（需要提前安装tk才能启动图形化页面）
cd /mnt
sudo ./install-tl -gui
# 接下来是texlive熟悉的安装界面，推荐安装到/home目录下，语言选Chinese,CJK,US and UK,French这四个（在win也是这么设置的）等安装完成
cd .. # 先退出再取消挂载。要不然会无法关闭正在运行的任务
sudo umount /mnt # 取消挂载
# 将E盘弹出
# 接下来就是win10的vscode里面配置wsl

# xelatex检查需要安装字体配置
sudo pacman -S fontconfig
sudo fc-cache # 更新字体缓存

# 图形化安装后是无法使用tlmgr进行自动更新的


