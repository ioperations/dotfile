# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME_RANDOM_CANDIDATES=( "cypher" "duellj" "evan" "funky" "imajes" "jtriley" "mikeh" "random" "rkj" "xiong-chiamiov" )
# ZSH_THEME=random
ZSH_THEME=mikeh
# ZSH_THEME_RANDOM_CANDIDATES=( "" "" )
#export LC_ALL=C

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# map caps to escape
setxkbmap -option caps:escape


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    osx
    sudo
    tmux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

export EDITOR=nvim
alias vi='nvim'
alias ra='ranger'
alias vim='nvim'
alias v='nvim'
alias e='emacs -nw'
alias emacs='emacs -nw'
alias c='ccat'
alias sl='sl -e' ##allow interupt
alias tmux='tmux -u' ##allow interupt
alias gc='git clone --depth 1 '
alias gs='git status'
alias gl='git branch -l'
alias gt='git tag -l'

export TI_USE_UNIFIED_MEMORY=0
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.zsh

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
# source ~/.config/mycli/init.sh
source $HOME/.cargo/env
alias ls='lsd'
alias ll='lsd -l'
alias la='lsd -la'
#tmux
#
case `uname -s` in
    "Linux")
	export PATH="$HOME/.local/bin/:$HOME/bin:$HOME/go/bin/:$PATH:/opt/swift/usr/bin/"
	export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
	export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
	export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo'
	;;
esac
# numlockx off

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
	. "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
	export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export ANDROID_NDK_HOME=$HOME/android-ndk/android-ndk-r21e/
export PATH=$PATH:$ANDROID_NDK_HOME

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
