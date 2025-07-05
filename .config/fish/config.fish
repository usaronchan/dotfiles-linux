if status is-interactive
    # Commands to run in interactive sessions can go here
    # echo "Hello world"
    # date
end

# setup config dir
set -g config_dir ~/.config/fish/conf.d
# source config file
for file in $config_dir/*.fish
    source $file
end

set dotfiles_dir '~/repos/dotfiles-linux'

# Update
alias update="yes | sudo pacman -Syu"
# Sync dotfiles
alias sync="python3 $dotfiles_dir/sync.py arch"


alias clean="sudo bash $dotfiles_dir/scripts/clean.sh"
alias mirror="sudo bash $dotfiles_dir/scripts/mirror.sh"

# python3 pip update
alias pyupdate="python3 $dotfiles_dir/scripts/pip-update.py"

# git last push
alias lastpush="bash $dotfiles_dir/scripts/last-push.sh"

alias repos="code ~/repos"
alias totex="code ~/tex"
##########################
# Coding
alias coding="code ~/coding"
# cd rust
alias cdrust="code ~/coding/rust-learn"

