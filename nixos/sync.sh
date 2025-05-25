
cd ~/repos/dotfiles-linux
dotfile_dir=$PWD/nixos

rm -rf /etc/nixos/configuration.nix
ln -s $dotfile_dir/configuration.nix /etc/nixos/configuration.nix

rm -rf /etc/nixos/hardware-configuration.nix
ln -s $dotfile_dir/hardware-configuration.nix /etc/nixos/hardware-configuration.nix
