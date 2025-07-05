# ~/.zshrc
# Author: Aaron Chan
# Last updated: 20241201

# 系统范围的文件在/etc/zsh，用户级的文件在~
# Global Order: zshenv, zprofile, zshrc, zlogin
# .zshenv 定义环境变量，每次启动zsh会话时总是调用它们
# .zprofile 启动文件在登录shell会话启动时被读取

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# source $HOME/.zshenv
# source $HOME/.profile

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="sexy-zsh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# 历史纪录条目数量
export HISTSIZE=700
# 注销后保存的历史纪录条目数量
export SAVEHIST=$HISTSIZE
# 历史纪录文件
export HISTFILE=~/.zsh_history

# time
TZ='Asia/Shanghai'; export TZ
# 显示等宽字体的
# PS1="$ " ; export PS1

# 插件
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
# export LANGUAGE=en_US
# export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

printf "------------------------------------------\n"
printf "   %s\n" "Welcome to the world of Linux"
printf "------------------------------------------\n"

# If the file exist, then source it.
if [ -f ~/.sh_alias ]; then
    . ~/.sh_alias
fi

if [ -f ~/.zshenv ]; then
    . ~/.zshenv
fi

if [ -f ~/.profile ]; then
    . ~/.profile
fi


dotfiles_dir=~/repos/dotfiles-linux

# Update
alias update="yes | sudo pacman -Syu"
# Sync dotfiles
alias sync="python3 $dotfiles_dir/sync.py arch"


# key sync
alias keysync="cd ~/repos/key; python3 sync.py"

# export GEM_HOME="$(gem env user_gemhome)"
# export PATH="$PATH:$GEM_HOME/bin"

# Install Ruby Gems to ~/gems
# export GEM_HOME="~/.local/share/gem/ruby/3.3.0"
# export PATH="$PATH:$GEM_HOME/bin"
# export GEM_HOME="$HOME/gems"
# export PATH="$HOME/gems/bin:$PATH"
# export PATH=$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH
# export GEM_HOME=$(ruby -e 'print Gem.user_dir')
# export PATH="$GEM_HOME/bin:$PATH"

###### To LaTeX directory ######
alias math="cd ~/tex/TeX"
alias hanky="cd ~/tex/hanky"

###### Website ######
# Blog
alias blog="cd ~/repos/chanzz-website/chanzz-blog"
# Homepage
alias homepage="cd ~/repos/chanzz-website/chanzz-homepage"

# Make files
alias mkfile="cd ~/coding/coding-training/scripts; sh make_files.sh"


# VSCode
### WSL
# export PATH="/mnt/d/VSCode/bin:$PATH"
### Linux Remote
export PATH="~/.vscode-server/bin:$PATH"


# Clean
alias clean="sudo bash $dotfiles_dir/scripts/clean.sh"
# Mirror
alias mirror="cd ~/repos/mirror-china && make mirror"

