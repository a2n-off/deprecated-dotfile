personnal dotfile

# content

config file for :
- zsh and my zsh
- tmux
- nvim and plugin
- gitmux
- font

# Do after clone

## install
- kitty
- omz
- install nvim

### nvim
- [install lsp server](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) and other stuff
```
sudo pacman -S base-devel cmake unzip ninja tree-sitter curl python-neovim ripgrep
npm install -g @angular/language-server eslint_d @fsouza/prettierd typescript typescript-language-server sql-language-server bash-language-server vscode-langservers-extracted cssmodules-language-server dockerfile-language-server-nodejs
yarn global add yaml-language-server
paru -S phpactor nvim-packer-git sourcekit-lsp
```
- for terraform lsp dl the [bin here](https://github.com/juliosueiras/terraform-lsp/releases) and add to `~/.tflsp`, the path is already set in the `.zshrc`
- do `PackerInstall`
- do `Mason` and install server

## font and emoji
- install [powerline font](https://github.com/powerline/fonts) (for neovim)
- install noto-fonts-emoji `pacman -S noto-fonts-emoji`
- create `/etc/fonts/local.conf` and paste
```
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
 <alias>
   <family>sans-serif</family>
   <prefer>
     <family>Noto Sans</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Sans</family>
   </prefer> 
 </alias>

 <alias>
   <family>serif</family>
   <prefer>
     <family>Noto Serif</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Serif</family>
   </prefer>
 </alias>

 <alias>
  <family>monospace</family>
  <prefer>
    <family>Noto Mono</family>
    <family>Noto Color Emoji</family>
    <family>Noto Emoji</family>
    <family>DejaVu Sans Mono</family>
   </prefer>
 </alias>
</fontconfig>
```
- do `fc-cache`
- install nerd-font [hack nerd font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip) and [jetbrain mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip)

### git & gpg & ssh
- copy/paste ssh key into `.ssh`
- import gpg key
- trust gpg key via `gpg --edit-key gpgKeyId` and `trust`
- `git config --global commit.gpgsign true`
- `git config --global user.signingkey "gpg key id"`
- `git config --global user.name "name"`
- `git config --global user.email "mail"`
- `git config --global init.defaultBranch main`

### automount
- add samus to the fstab (`mkdir ~/samus`)
```
# samus
UUID=123456789 /home/a2n/samus	ext4		defaults	0 0
```
and for checking
```
systemctl daemon-reload
sudo mount -a
```

### blur kitty
- into `kwinscript` dl the `forceblur` script and add `kitty` to the config and relog the current user

---

Fell free to fork, edit, etc ...
