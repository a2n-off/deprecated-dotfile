# zsh install folder
export ZSH="$HOME/.oh-my-zsh"

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOQUIT=true

SPACESHIP_CHAR_SYMBOL="  "
#SPACESHIP_CHAR_SYMBOL="  "
SPACESHIP_USER_SHOW=always
SPACESHIP_GIT_STATUS_COLOR="cyan"
SPACESHIP_GIT_BRANCH_PREFIX=" "
#SPACESHIP_GIT_STATUS_UNTRACKED=""
#SPACESHIP_GIT_STATUS_ADDED=""
#SPACESHIP_GIT_STATUS_MODIFIED=""
#SPACESHIP_GIT_STATUS_DELETED=""
#SPACESHIP_GIT_STATUS_RENAMED="ךּ"
#SPACESHIP_GIT_STATUS_PREFIX=" "
#SPACESHIP_GIT_STATUS_SUFFIX=""

ZSH_THEME="spaceship"

# case-sensitive completion
CASE_SENSITIVE="false"

# hyphen-insensitive completion
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="false"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

#colors in ls
DISABLE_LS_COLORS="false"

# auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# command auto-correction.
ENABLE_CORRECTION="false"

plugins=(tmux git colorize docker docker-compose heroku nvm yarn ruby zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

## alias
alias dpsa="docker ps -a"
alias ds="sudo systemctl start docker.service"
alias dcup="docker-compose up"
#alias php="php74"
alias symClear="php bin/console cache:pool:clear cache.global_clearer"
alias symStart="symfony server:start"
alias nv="nvim"
alias nf="neofetch"
alias please="sudo"
alias battery="cat /sys/class/power_supply/BAT0/capacity"
alias gemhelp="echo 'gein   gem install Install a gem into the local repository \n
geun   gem uninstall Uninstall gems from the local repository \n
geli   gem list Display gems installed locally \n
gei   gem info Show information for the given gem \n
geiall   gem info --all Display all gem versions \n'"
alias githelp="echo 'ga 	git add\n
gcam 	git commit -a -m\n
gcmsg 	git commit -m\n
gco 	git checkout\n
gcp 	git cherry-pick\n
gcpa 	git cherry-pick --abort\n
gcpc 	git cherry-pick --continue\n
gcb 	git checkout -b\n
gcf 	git config --list\n
gcl 	git clone --recurse-submodules\n
gd 	git diff\n
gf 	git fetch\n
gfa 	git fetch --all --prune\n
gup 	git pull --rebase\n
gupv 	git pull --rebase -v\n
gupa 	git pull --rebase --autostash\n
gupav 	git pull --rebase --autostash -v \n'"
alias tmuxhelp="echo 'copy >> ctrl+b > [ > ctrl+space > ctrl+w'"

## RBENV -- replaced by rvm
# path
# export PATH="$HOME/.rbenv/bin:$PATH"
# Load rbenv automatically
# eval "$(rbenv init - zsh)"

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# ANDROID STUFF
export ANDROID_SDK_ROOT="/home/a2n/Android/Sdk"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools:$HOME/Android/Sdk/emulator:$HOME/Android/Sdk/cmdline-tools/latest:$HOME/Android/Sdk/tools"

# gitmux
export PATH="$PATH:$HOME/.gitmux"

# sonarcube
export PATH="$PATH:$HOME/sonar-scanner/bin"
