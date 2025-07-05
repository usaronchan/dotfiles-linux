input=$1

base_install()
{
  # pacman-contrib, fastfetch, neovim, lazygit, cron, tmux, Typst, aria2, less, ranger, yazi (替代 ranger), Tree
  sudo pacman -S --noconfirm pacman-contrib fastfetch neovim lazygit cronie tmux typst aria2 less ranger yazi tree
  fastfetch -v && nvim -v && lazygit -v && crontab -V && tmux -V && typst -V && aria2c --version && less --version && ranger --version && yazi --version && tree --version
  ############### Podman ###############
  sudo pacman -S --noconfirm podman podman-compose
  podman version && podman-compose --version
  ##############################################
  # curl, wget
  sudo pacman -S --noconfirm curl wget
  # htop
  sudo pacman -S --noconfirm htop
  # tar, 7z, zip, unzip
  sudo pacman -S --noconfirm tar p7zip zip unzip
  # mysql
  sudo pacman -S mysql
  # fish
  sudo pacman -S --noconfirm fish && fish --version
  # github cli
  sudo pacman -S --noconfirm github-cli && gh --version
  # man
  sudo pacman -S --noconfirm man-db && sudo mandb
}

# 不要折腾各种CLI工具和沉迷于配置这些工具，Linux系统是给你学习编程的，而不是用于娱乐的
# 这些工具顶多算是个玩具，真正生产力还是得靠命令行来操作。

gui_install()
{
  # kitty terminal
  sudo pacman -S --noconfirm kitty && kitty --version
  # firefox
  sudo pacman -S firefox
}

more_install()
{
  ############### Docker ###############
  sudo pacman -S --noconfirm docker docker-buildx docker-compose
  docker --version && docker buildx version && docker-compose version
  # mupdf
  sudo pacman -S mupdf
  # mutool
  sudo pacman -S --noconfirm mupdf-tools
  # dhcpcd
  sudo pacman -S --noconfirm dhcpcd
  # ffmpeg
  sudo pacman -S --noconfirm ffmpeg
  # Hugo
  sudo pacman -S --noconfirm hugo && hugo version
  # w3m
  sudo pacman -S --noconfirm w3m && w3m -version
  # pass
  sudo pacman -S --noconfirm pass && pass version
  # micro
  sudo pacman -S --noconfirm micro && micro -version
  # mpv
  sudo pacman -S --noconfirm mpv && mpv --version
  # v2ray
  sudo pacman -S --noconfirm v2ray && v2ray version
  # check pdf
  sudo pacman -S --noconfirm poppler qpdf
  # pandoc
  sudo pacman -S --noconfirm pandoc && pandoc --version
  # deno
  sudo pacman -S --noconfirm deno && deno --version
  # rsync
  sudo pacman -S --noconfirm rsync && rsync --version
  # fd
  sudo pacman -S --noconfirm fd && fd --version
  # pyright, rust-analyzer
  sudo pacman -S --noconfirm pyright rust-analyzer
  pyright --version
}

yay_install()
{
  # 需要挂代理
  cd ~
  sudo pacman -S git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
}

coding_install()
{
  ######################### Coding #########################
  # C/C++
  sudo pacman -S --noconfirm gcc gdb clang make cmake
  gcc --version && gdb -v && clang --version && make -v && cmake --version
  sudo pacman -S --noconfirm llvm clang lldb
  clang --version && lldb --version
  # Java, Go
  sudo pacman -S --noconfirm jdk-openjdk go
  java --version && javac -version && go version
  # JavaScript (Node.js npm), Typescript
  sudo pacman -S --noconfirm nodejs npm typescript
  node -v && npm -v && tsc -v
  # Lua, Perl, Ruby
  sudo pacman -S --noconfirm lua perl ruby
  lua -v && perl -v && ruby -v
}

install_zsh()
{
  yes | sudo pacman -S zsh wget curl git
  # 安装oh-my-zsh并配置（使用国内镜像站）
  # sh -c "$(wget -O- https://install.ohmyz.sh/)"
  # 命令提示插件。会提示你历史使用过的命令
  # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  # 命令语法校验插件。在输入命令的过程中，若指令不合法，则指令显示为红色，若指令合法就会显示为绿色。
  # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  # 使用国内镜像，访问速度会快很多
  # sh -c "$(curl -fsSL https://gitee.com/pocmon/ohmyzsh/raw/master/tools/install.sh)"
  sh -c "$(curl -fsSL https://gitee.com/mirrors/ohmyzsh/raw/master/tools/install.sh)"
}

setup_ohmyzsh()
{
  # 自建的镜像库（每月更新）
  git clone https://gitee.com/mirrors/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://gitee.com/mirrors/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}



if [ "$input" = "arch" ]
then
  coding_install
  base_install
  yay_install
elif [ "$input" = "coding_install" ]
then
  coding_install
elif [ "$input" = "base_install" ]
then
  base_install
elif [ "$input" = "yay_install" ]
then
  yay_install
elif [ "$input" = "more" ]
then
  more_install
elif [ "$input" = "setup_zsh" ]
then
  install_zsh
elif [ "$input" = "oh_my_zsh" ]
then
  setup_ohmyzsh
fi
