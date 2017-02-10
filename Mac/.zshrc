# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#########
# Aliases
# \command -> temporarily disable an alias
#########

# Navigation
alias ~='cd ~' # Comes with Oh-my-zsh
alias c='clear'
alias cp='cp -iv'
alias fhere='find . -name '
alias hist='history'
alias histg='history | grep'
alias less='less -N'
alias ls='ls -alhG'
alias lst='ls -althG'
alias lsd='ls -alhG | head'
alias lstd='ls -althG | head'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias ports='netstat -tulanp'
alias rm='rm -iv'
alias tf='tail -f'
alias wget='wget -c'

# Directories
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias checkSpace='du -sh'
alias dt='cd $HOME/Desktop'
alias gd='cd $HOME/GoogleDrive'

# Utility
alias ps='ps aux'

# Edit
alias vi=vim
alias v='/usr/bin/vim'

# zsh specific
alias sc='source ~/.zshrc'

# nvm specific
# http://stackoverflow.com/questions/21215059/cant-use-nvm-from-root-or-sudo/29903645#29903645
alias updateGlobalNode='n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local'

# git specific
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gau='git add --update'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'

# history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
# alias fip = 'ifconfig | grep -Eo \'inet (addr:)?([0-9]*\.){3}[0-9]*\' | grep -Eo \'([0-9]*\.){3}[0-9]*\' | grep -vE \'(127.0.0.1|172.17.*|192.168.*)\''

# if user is not root, pass all commands via sudo #
# if [ $UID -ne 0 ]; then
#    alias reboot='sudo reboot'
#    alias update='sudo apt-get upgrade'
# fi

############################################
# Load TripAdvisor specific settings
############################################

fullHostName=`hostname -f`

# Load .tarc
if [[ $fullHostName == yfang-mac ]] && [ -f ~/.tarc ]; then
    source ~/.tarc
fi

# Go to TRTOP if on dev servers
if [[ $fullHostName == *.tripadvisor.com ]]; then
  cd $TRTOP
fi
