

cd ~/repos/dotfiles-linux
dotfile_dir="$PWD"

# .ssh/config
rm -rf ~/.ssh/config
ln -s $dotfile_dir/.ssh/config ~/.ssh/config

# .gitconfig
rm -rf ~/.gitconfig
ln -s $dotfile_dir/fedora/.gitconfig ~/.gitconfig

# fish/config.fish
rm -rf ~/.config/fish/config.fish
ln -s $dotfile_dir/fedora/.config/fish/config.fish ~/.config/fish/config.fish

# fish/conf.d
rm -rf ~/.config/fish/conf.d
ln -s $dotfile_dir/fedora/.config/fish/conf.d ~/.config/fish/conf.d

