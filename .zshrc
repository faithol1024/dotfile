# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias buildgala="cd ~/go/src/github.com/tokopedia/galadriel && go build && ./galadriel"
alias buildintools="cd ~/go/src/github.com/tokopedia/intools && go build && ./intools"
alias buildstacking="cd ~/go/src/github.com/tokopedia/campaign-engine && make gorun"
alias buildpcengine="cd ~/go/src/github.com/tokopedia/promocode-engine && make gorun"
alias buildsugeng="cd ~/go/src/github.com/tokopedia/suggestion-engine && make gorun"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias la="ls -la"
alias gala="cd ~/go/src/github.com/tokopedia/galadriel"
alias pull="git pull origin \$(git branch | grep \* | cut -d ' ' -f2) "
alias push="git push origin \$(git branch | grep \* | cut -d ' ' -f2) "
alias pushf="git push -f origin \$(git branch | grep \* | cut -d ' ' -f2) "
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gt="git stash"
alias gtp="git stash pop"
alias gb="git branch | grep \* | cut -d ' ' -f2"
alias depensure="dep ensure --vendor-only -v"
alias gotoped="cd ~/go/src/github.com/tokopedia"
alias gotestfail="GOARCH=amd64 make gotest_cover | grep FAIL"
alias showports="lsof -i -P -n | grep LISTEN"
alias code="GTK_IM_MODULE=ibus code"
alias startsonar="docker run -d -p 9000:9000 -p 9092:9092 sonarqube"
alias grpcox="cd go/src/github.com/gusaul/grpcox && make start"
alias tshprod="tsh_lite login --proxy=teleport.tokopedia.net:3080 --auth=gsuite"
alias tshstaging="tsh_lite login --proxy=teleport-staging.tokopedia.net:3080 --auth=gsuite"
alias tsh="tsh_lite"
alias python="python3"
alias pip="pip3"
alias gom1="export GOARCH=arm64; GOPATH=$HOME/go; GOBIN=$HOME/go/bin"
alias gointel="export GOARCH=amd64; GOPATH=$HOME/sdk/go1.17.8"
alias gcloudlogin="gcloud auth application-default login"

export GOPATH=$HOME/go
# export GOBIN=$HOME/go/bin
export PATH=$PATH:$HOME/go/bin
export EDITOR='vim'
export VISUAL='vim'
# export GOOS=darwin
# export GOARCH=amd64
export GOARCH=arm64
export CGO_ENABLED=1
export GOPRIVATE=github.com/tokopedia,github.com/faithol1024
export PATH=$PATH:$HOME/development/flutter/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/faisal.sulaiman/gcp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/faisal.sulaiman/gcp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/faisal.sulaiman/gcp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/faisal.sulaiman/gcp/google-cloud-sdk/completion.zsh.inc'; fi
