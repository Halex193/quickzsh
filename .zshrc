# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes


POWERLEVEL9K_MODE='nerdfont-complete'

ZSH_THEME="powerlevel10k/powerlevel10k"

# Icon
# POWERLEVEL9K_OS_ICON_BACKGROUND="darkblue"
POWERLEVEL9K_OS_ICON_FOREGROUND="white"

# Dir
POWERLEVEL9K_DIR_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DIR_BACKGROUND="027"
POWERLEVEL9K_DIR_HOME_BACKGROUND="054"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="054"

# Context
DEFAULT_USER=$USER
POWERLEVEL9K_ALWAYS_SHOW_USER=true
POWERLEVEL9K_CONTEXT_TEMPLATE="%n%m"

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="088"
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND="088"
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND="088"
POWERLEVEL9K_CONTEXT_FOREGROUND="white"

# SSH
POWERLEVEL9K_SSH_BACKGROUND="black"
POWERLEVEL9K_SSH_FOREGROUND="white"

# Command execution time
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="white"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="black"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time os_icon)

# more prompt elements that are suggested
# (public_ip docker_machine pyenv nvm)          https://github.com/bhilburn/powerlevel9k#prompt-customization
# Note: using public_ip is cool but when connection is down prompt waits for 10-20 seconds

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir vcs)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(
    git
    zsh-completions
    zsh-autosuggestions
    zsh-syntax-highlighting
    history-substring-search
    python
    httpie
    docker
    lol
    pip
    pyenv
    redis-cli
    screen
    systemd
    web-search
    k
    # zsh-wakatime          # enable if you use wakatime with 'https://github.com/wbingli/zsh-wakatime'
    )
#plugins+=(zsh-nvm)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add to PATH to Install and run programs with "pip install --user"
export PATH=$PATH:~/.local/bin

NPM_PACKAGES="${HOME}/.npm"
PATH="$NPM_PACKAGES/bin:$PATH"

[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

export PATH=$PATH:~/.quickzsh/todo/bin    #usig alias doesn't properly work

autoload -U compinit && compinit        # zsh-completions
# autoload bashcompinit                 # bash completions
# bashcompinit


# CUSTOM ALIASES

SAVEHIST=50000      #save upto 50,000 lines in history. oh-my-zsh default is 10,000
#setopt hist_ignore_all_dups     # dont record duplicated entries in history during a single session

alias myip="wget -qO- https://wtfismyip.com/text"	# quickly show external ip address
alias l="ls -lah"
alias x="exit"
alias k="k -h"						# show human readable filesizes, in kb, mb etc
alias cl="clear"


# CUSTOM FUNCTIONS

# cheat sheets (github.com/chubin/cheat.sh), find out how to use commands
# example 'cheat tar'
# for language specific question supply 2 args first for language, second as the question
# eample: cheat python3 execute external program
cheat() {
    if [ "$2" ]; then
        curl "https://cheat.sh/$1/$2+$3+$4+$5+$6+$7+$8+$9+$10"
    else
        curl "https://cheat.sh/$1"
    fi
}

# Matrix screen saver! will run if you have installed "cmatrix"
# TMOUT=900
# TRAPALRM() { if command -v cmatrix &> /dev/null; then cmatrix -sb; fi }

speedtest() {
    curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
}

# Find geo info from IP
ipgeo() {
    # Specify ip or your ip will be used
    if [ "$1" ]; then
        curl "http://api.db-ip.com/v2/free/$1"
    else
        curl "http://api.db-ip.com/v2/free/$(myip)"
    fi
}
