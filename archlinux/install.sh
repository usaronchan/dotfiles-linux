input=$1

base_install()
{
  # pacman-contrib, fastfetch, neovim, lazygit, cron, tmux, Typst, aria2, less, ranger, yazi (替代 ranger), Tree
  yes | sudo pacman -S pacman-contrib fastfetch neovim lazygit cronie tmux typst aria2 less ranger yazi tree
  fastfetch -v && nvim -v && lazygit -v && crontab -V && tmux -V && typst -V && aria2c --version && less --version && ranger --version && yazi --version && tree --version
  ############### Docker, Podman ###############
  # docker, docker-buildx, docker-compose
  yes | sudo pacman -S docker docker-buildx docker-compose
  docker --version && docker buildx version && docker-compose version
  yes | sudo pacman -S podman podman-compose
  podman version && podman-compose --version
  ##############################################
  # mupdf
  sudo pacman -S mupdf
  # mutool
  yes | sudo pacman -S mupdf-tools
  # htop
  yes | sudo pacman -S htop
  # tar, 7z, zip, unzip
  yes | sudo pacman -S tar p7zip zip unzip
  # mysql
  sudo pacman -S mysql
  # fish
  yes | sudo pacman -S fish && fish --version
}

# 不要折腾各种CLI工具和沉迷于配置这些工具，Linux系统是给你学习编程的，而不是用于娱乐的
# 这些工具顶多算是个玩具，真正生产力还是得靠命令行来操作。

more_install()
{
  # github cli
  yes | sudo pacman -S github-cli && gh --version
  # dhcpcd
  yes | sudo pacman -S dhcpcd
  # ffmpeg
  yes | sudo pacman -S ffmpeg
  # Hugo
  yes | sudo pacman -S hugo && hugo version
  # w3m
  yes | sudo pacman -S w3m && w3m -version
  # pass
  yes | sudo pacman -S pass && pass version
  # micro
  yes | sudo pacman -S micro && micro -version
  # mpv
  yes | sudo pacman -S mpv && mpv --version
  # v2ray
  yes | sudo pacman -S v2ray && v2ray version
  # man
  yes | sudo pacman -S man-db && sudo mandb
  # check pdf
  yes | sudo pacman -S poppler qpdf
  # pandoc
  yes | sudo pacman -S pandoc && pandoc --version
  # deno
  yes | sudo pacman -S deno && deno --version
  # rsync
  yes | sudo pacman -S rsync && rsync --version
  # fd
  yes | sudo pacman -S fd && fd --version
  # pyright, rust-analyzer
  yes | sudo pacman -S pyright rust-analyzer
  pyright --version
}

yay_install()
{
  cd ~
  # 国内直接安装二进制可执行文件即可
  sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
}

coding_install()
{
  ######################### Coding #########################
  # C/C++
  yes | sudo pacman -S gcc gdb clang make cmake
  gcc --version && gdb -v && clang --version && make -v && cmake --version
  yes | sudo pacman -S llvm clang lldb
  clang --version && lldb --version
  # Java, Go
  yes | sudo pacman -S jdk-openjdk go
  java --version && javac -version && go version
  # JavaScript (Node.js npm), Typescript
  yes | sudo pacman -S nodejs npm typescript
  node -v && npm -v && tsc -v
  # Lua, Perl, Ruby
  yes | sudo pacman -S lua perl ruby
  lua -v && perl -v && ruby -v
  # Rust
  yes | sudo pacman -S curl
  install_rust
  check_rust
}

install_rust()
{
  # Rust: https://www.rust-lang.org/tools/install
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

check_rust()
{
  rustc --version && cargo --version && rustdoc --version
  rustup -V
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
