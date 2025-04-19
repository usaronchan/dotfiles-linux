
cd ~/repos/dotfiles-linux
dotfile_dir="$PWD"


if vim --version;
then
    echo 'vim is installed.'
else
    echo 'vim is not installed.'
fi

# vim
rm -rf ~/.vimrc
ln -s $dotfile_dir/.vimrc ~/.vimrc

if nvim --version;
then
    echo 'nvim is installed.'
else
    echo 'nvim is not installed.'
fi

# nvim
rm -rf ~/.config/nvim
ln -s $dotfile_dir/.config/nvim ~/.config/nvim

