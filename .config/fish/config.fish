set dotfiles_dir '~/repos/dotfiles-linux'

# Update
alias update="yes | sudo pacman -Syu"
# Sync dotfiles
alias sync="python3 $dotfiles_dir/sync.py arch"
# Reload config file
alias reload="source ~/.config/fish/config.fish"

alias clean="sudo bash $dotfiles_dir/scripts/clean.sh"
alias mirror="sudo bash $dotfiles_dir/scripts/mirror.sh"


alias rm="rm -i"
alias ll="ls -alh"

alias pip="pip3"
alias python="python3"
# python3 pip update
alias pyupdate="python3 $dotfiles_dir/scripts/pip-update.py"

# git last push
alias lastpush="bash $dotfiles_dir/scripts/last-push.sh"

alias chan="code ~"
alias repos="code ~/repos"
alias totex="code ~/tex"
##########################
### shortcut key
alias lg="lazygit"
alias ff="fastfetch"

##########################
# Coding
alias coding="code ~/coding"
# cd rust
alias cdrust="code ~/coding/rust-learn"

