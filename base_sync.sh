
# git config
rm -rf ~/.gitconfig
ln -s $PWD/.gitconfig ~/.gitconfig

# ssh config
mkdir -p ~/.ssh
rm -rf ~/.ssh/config
ln -s $PWD/.ssh/config ~/.ssh/config

# vim
rm -rf ~/.vimrc
ln -s $PWD/.vimrc ~/.vimrc

# nvim
rm -rf ~/.config/nvim
ln -s $PWD/.config/nvim ~/.config/nvim

# lazygit
rm -rf ~/.config/lazygit
ln -s $PWD/.config/lazygit ~/.config/lazygit

# podman
rm -rf ~/.config/containers
ln -s $PWD/.config/containers ~/.config/containers

