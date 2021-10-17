# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="myagnosterlight"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
plugins=(
  vi-mode
  git
  zsh-autosuggestions
  zsh-syntax-highlighting        
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR='nvim'

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

alias c="clear"
alias ne="neofetch"
alias vim="nvim"
alias ra="ranger"
alias de="cd ~/Desktop"
alias vc="vim ~/.config/nvim/init.vim"
alias vh="vim ~/.zsh_history"
alias coc="vim ~/.config/nvim/coc-settings.json"
alias sz="source ~/.zshrc"
alias vz="vim ~/.zshrc"
alias gc="git clone "
alias gm="git commit "
alias lc="cd ~/Desktop/Projects/LeetCodeProblems && vim -c ':CocList LeetcodeProblems'"
alias bot="cd ~/Desktop/Github/MiraiBot && vim"
alias gh="cd ~/Desktop/Github"
alias dl="wget -c "
alias pi="python3 -m pip install "
alias mcl="cd ~/Desktop/Mirai/mcl-1.0.4/ && ./mcl"
alias csapp="docker start b2861d857859 && docker attach b2861d857859"
# vi-mode
bindkey -v

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true


function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

export PATH=/usr/local/sbin:$PATH

# Java
# export JAVA_HOME=$(/usr/libexec/java_home)

# Maven
export MAVEN_HOME=/Applications/IntelliJ\ IDEA.app/Contents/plugins/maven/lib/maven3
export PATH=$PATH:$MAVEN_HOME/bin

# Cmake
# export CMAKE_ROOT=$HOME/Desktop/Qt/Tools/CMake/CMake.app/Contents/bin/
# export PATH=$CMAKE_ROOT:$PATH


# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"

# php
# export PATH=/usr/local/opt/php/bin:$PATH

# Golang
# export PATH=/usr/local/opt/go@1.14/bin:$PATH
export GOPATH="$HOME/Documents/code/GoPath"
export GOPROXY=https://goproxy.io
export GO111MODULE=off

# Oracle Database
export PATH=~/Documents/instantclient_19_8:$PATH

# Python Binary Files
export PATH=~/Library/Python/3.9/bin:$PATH

# Mono
export PATH=/Library/Frameworks/Mono.framework/Versions/6.12.0/bin:$PATH

# Downloaded binary files
export PATH=~/Documents/bin:$PATH

export PATH=/usr/local/opt/inetutils/libexec/gnubin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias luamake=/Users/algiz/Desktop/Github/lua-language-server/3rd/luamake/luamake

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/riscv-gnu-toolchain/bin:$PATH"
