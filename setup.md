## Setup

- To test connect Internet
  - run `bash setup/ping-test.sh`
- Download and install git package
- Setup git config and git clone dotfiles via HTTPS
  - See `setup/git.sh`
  - Use command: `git clone`
- Install some important softwares
  - See `setup/install.sh`
- Download yay and Install some software by yay
  - See `setup/yay.sh`
- Sign in GitHub and Download key file to home dir
- Setup SSH config
- Sync dotfiles
  - `git clone dotfiles-linux`
  - See `setup/sync.sh`
- Change git repos remote url
  - HTTPS -> SSH

### Others

- Download VSCode
  - See `setup/vscode.sh`
- Install TeXLive
  - See `texlive/install.sh`
- Update TeXLive packages
  - See `texlive/update.sh`
