import os,sys

# dotfiles path
dotfiles = "~/repos/dotfiles-linux"

# Arch Linux
shell_setting = [".zshrc", ".zshenv", ".profile"]
# Other settings
base_alias = [".sh_alias", ".gitconfig", ".gitmessage", ".vimrc"]
other_settings = [".gnupg/gpg-agent.conf", ".gnupg/gpg.conf", ".ssh/config", ".cargo/config.toml"]

files = base_alias + other_settings
dirs = [".config/nvim", ".config/tmux", ".config/lazygit", ".config/containers", ".pip", ".config/fish/config.fish"]

def archlinux_file(file_name):
    command = f"rm -f ~/{file_name} && ln -s {dotfiles}/archlinux/{file_name} ~/{file_name}"
    print(f"archlinux/{file_name}")
    return command

def del_check_file(file_name):
    command = f"rm -f ~/{file_name} && ln -s {dotfiles}/{file_name} ~/{file_name}"
    print(file_name)
    return command

def del_check_dir(dir_name):
    command = f"rm -rf ~/{dir_name} && ln -s {dotfiles}/{dir_name} ~/{dir_name}"
    print(dir_name)
    return command

def arch():
    print("===== sync dirs =====")
    for a in dirs:
        os.system(f"{del_check_dir(a)}")
    print("===== sync files =====")
    for i in files:
        os.system(f"{del_check_file(i)}")
    print("===== Arch Linux =====")
    for i in shell_setting:
        os.system(f"{archlinux_file(i)}")

eval(sys.argv[1] + "()")
