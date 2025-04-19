# name: sexy-zsh.zsh-theme
# Author: Aaron Chan

########################################
# This is setting of the user account
# Root use default bash shell
########################################
# logo info
local logo_info='%{$fg_bold[magenta]%}->%{$reset_color%}'
# login info
local login_info='%{$fg_bold[cyan]%}%n@%m%{$reset_color%}'
# real time
local time='%{$fg[green]%}[$(date "+%F %A %T")]%{$reset_color%}'
# directory info
local pwd='%{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}'

PROMPT="
${logo_info} ${login_info} ${time} ${pwd}
%{$fg_bold[yellow]%}>>%  %{$reset_color%}"

# # logo
# logo_info() {
#     local color="%{$fg_bold[red]%}";
#     local logo="卐";
#     local color_reset="%{$reset_color%}";
#     echo "${color}${logo}${color_reset}";
# }

# # login info
# login_info() {
#     local color="%{$fg_bold[cyan]%}";
#     local user_host="%n@%m";
#     local color_reset="%{$reset_color%}";
#     echo "${color}${user_host}${color_reset}";
# }

# if [[ "$USER" == "root" ]]; then
# PROMPT="
# ┏%{$fg_bold[red]%}%n@%m%{$reset_color%}
# ┣
# ┗%{$fg_bold[yellow]%}>>%  %{$reset_color%}"
# fi
