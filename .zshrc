##
## OMZ configuration
##

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# how often to auto-update (in days).
zstyle ':omz:update' frequency 1

plugins=(git colorize docker docker-compose heroku nvm yarn ruby)

source $ZSH/oh-my-zsh.sh

##
## User configuration
##

# alias
alias nv="nvim"
alias nf="neofetch"
alias docker psa="docker ps -a"
alias ds="sudo systemctl start docker"
alias dcup="docker-compose up"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Android
export ANDROID_SDK_ROOT="/home/a2n/Android/Sdk"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools:$HOME/Android/Sdk/emulator:$HOME/Android/Sdk/cmdline-tools/latest:$HOME/Android/Sdk/tools"

# add the lsp server bin for terraform
# usefull for lsp server in nvim
export PATH="$PATH:$HOME/.tflsp"
