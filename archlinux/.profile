
# GPG
# unset SSH_AGENT_PID
# if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
#   export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
# fi
export GPG_TTY=$(tty)
# gpg-connect-agent updatestartuptty /bye >/dev/null


# TeX Live
PATH=~/texlive/2025/bin/x86_64-linux:$PATH; export PATH
# 如果没有安装帮助文档不用写入以下环境变量
# MANPATH=~/texlive/2025/texmf-dist/doc/man:$MANPATH; export MANPATH
# INFOPATH=~/texlive/2025/texmf-dist/doc/info:$INFOPATH; export INFOPATH


# cargo的环境配置
. "$HOME/.cargo/env"


# 修复LaTeX的未知错误
# export LC_ALL=C


# clash代理
# export http_proxy=192.168.31.211:10808
# export https_proxy=127.0.0.1:7890
# export all_proxy=192.168.31.211:10808


