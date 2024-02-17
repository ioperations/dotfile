# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME_RANDOM_CANDIDATES=( "cypher" "duellj" "evan" "funky" "imajes" "jtriley" "mikeh" "random" "rkj" "xiong-chiamiov" )
# ZSH_THEME=random
ZSH_THEME=mikeh
# ZSH_THEME_RANDOM_CANDIDATES=( "" "" )
export KEYTIMEOUT=1 
plugins=(
    macos
    sudo
    ag
    aliases
    archlinux
    aws
    bazel
    command-not-found
    docker
    docker-compose
    docker-machine
    extract
    git-flow
    kubectl
    kubectx
    ripgrep
    rsync
    rust
    timer
    zoxide
    zsh-syntax-highlighting
    zsh-autosuggestions
)


export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"



function pkill(){
    ps uxa | fzf -m | awk '{print $2}' | xargs sudo kill -9
}
    
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:wrap"
export FZF_CTRL_T_OPTS="
  --preview '[ -d {} ] && tree -L 1 {} || bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"


# map caps to escape
#if command -v setxkbmap >> /dev/null 2>&1 ; then
    #setxkbmap -option caps:escape
#fi


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

export EDITOR=nvim
alias ra='ranger'
alias v='nvim'
alias e='nvim'
alias hx='helix'
alias vi='nvim'
alias m='mvim'
alias vf='nvim `fzf`'
alias c='ccat'
alias sl='sl -e' ##allow interupt
alias tmux='tmux -u' ##allow interupt
alias ga='git add .'
alias gc='git clone --depth 1 '
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias gP='git pull'
alias gl='git log '
alias gt='git tag -l'
alias clang++='clang++ -fsanitize=address -std=c++17 '
alias cc='clang++ -fsanitize=address -std=c++17 '
alias cpp='clang++ -fsanitize=address -std=c++17 '
alias cat='bat'
alias arch='uname -m'

alias dc='cd'
alias cd='z'

alias sl='ls'
# alias kubectl='minikube kubectl --'
alias ka='kubectl apply'
alias kg='kubectl get'
alias ked='kubectl edit'
alias kexe='kubectl exec'
alias kexp='kubectl explain'
alias kd='kubectl describe'

export TI_USE_UNIFIED_MEMORY=0
[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f ~/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.zsh ] && source ~/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.zsh

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
if command -v lsd >/dev/null 2>&1 ;then
    alias ls='lsd'
    alias ll='lsd -l'
    alias la='lsd -la'
fi
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

export PATH="$HOME/go/bin/:$PATH"
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

[ -d ~/.ghcup/bin ] && export PATH=$PATH:~/.ghcup/bin/
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -d ~/bin/depot_tools ] && export PATH=$HOME/bin/depot_tools:$PATH
[ -f ~/zclang/bin/clang ] && export PATH=$HOME/zclang/bin:$PATH

load_private_clang(){
    export PATH="$HOME/zclang/bin:$PATH"
}

export PATH="/home/tablinux/build/git-fuzzy/bin:$PATH"
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# or for everything
zstyle ':completion:*' fzf-search-display true
# basic file preview for ls (you can replace with something more sophisticated than head)
zstyle ':completion::*:ls::*' fzf-completion-opts --preview='eval head {1}'
# preview when completing env vars (note: only works for exported variables)
# eval twice, first to unescape the string, second to expand the $variable
zstyle ':completion::*:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' fzf-completion-opts --preview='eval eval echo {1}'
# preview a `git status` when completing git add
zstyle ':completion::*:git::git,add,*' fzf-completion-opts --preview='git -c color.status=always status --short'
# if other subcommand to git is given, show a git diff or git log
zstyle ':completion::*:git::*,[a-z]*' fzf-completion-opts --preview='
eval set -- {+1}
for arg in "$@"; do
    { git diff --color=always -- "$arg" | git log --color=always "$arg" } 2>/dev/null
done'

# preview when completing env vars (note: only works for exported variables)
# eval twice, first to unescape the string, second to expand the $variable

# preview a `git status` when completing git add

# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

function pppp() {
    # Only show completions when the cursor is at the end of the line.
    # shellcheck disable=SC2154
    [[ "${#words[@]}" -eq "${CURRENT}" ]] || return 0

    if [[ "${words[-1]}" == '-' ]]; then
        setopt localoptions pipefail no_aliases 2> /dev/null
        local item
        dirs -l | sed 's/ /\n/g' | fzf | while read item ; do 
            echo -n "${(q)item} "
            echo -n "${(q)item} " >> ~/tt
        done 
        echo 
    fi
    return 0
}
compdef pppp vvvv

# 
# PATH="/home/tablinux/perl5/bin${PATH:+:${PATH}}"; export PATH;
# PERL5LIB="/home/tablinux/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
# PERL_LOCAL_LIB_ROOT="/home/tablinux/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
# PERL_MB_OPT="--install_base \"/home/tablinux/perl5\""; export PERL_MB_OPT;
# PERL_MM_OPT="INSTALL_BASE=/home/tablinux/perl5"; export PERL_MM_OPT;

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

# source /home/tablinux/.iterm2_shell_integration.zsh


#[ -f "/home/tablinux/.ghcup/env" ] && source "/home/tablinux/.ghcup/env" # ghcup-env

function ppgrep() {
    if [[ $1 == "" ]]; then
        PERCOL=percol
    else
        PERCOL="percol --query $1"
    fi
    ps aux | fzf -m | awk '{ print $2 }'
}

function ppkill() {
    if [[ $1 =~ "^-" ]]; then
        QUERY=""            # options only
    else
        QUERY=$1            # with a query
        [[ $# > 0 ]] && shift
    fi
    ppgrep $QUERY | xargs kill $*
}

function pgdb() {
    PERCOL=percol
    gdb -p $(ps aux | fzf | awk '{ print $2 }' )
}


function gitcleanrepo() {
    git status --short | awk '{if ($1 == "??") print $2 }' | xargs rm -r 
}

function gitcleanrepo_modify() {
    git status --short | awk '{if ($1 != "??") print $2 }' | xargs git checkout 
}

export MCFLY_RESULTS=50
export MCFLY_FUZZY=4

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/Dev/bin:$PATH
export LD_LIBRARY_PATH=$HOME/Dev/lib:$LD_LIBRARY_PATH

export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
## source ~/.mcfly.sh
# export RUSTFLAGS="-Z polonius"
# 设置最大缓存为 5G 默认为 10G
export SCCACHE_CACHE_SIZE="20G"
# 设置缓存保存路径，默认 MacOS 为 `~/Library/Caches/Mozilla.sccache`
export SCCACHE_DIR="$HOME/.cargo/sccache"
# sccache 程序路径
# export RUSTC_WRAPPER="sccache"
# export RUSTFLAGS="-Dwarnings"
# eval "$(starship init zsh)"
perfrecord ()
{
    perf record -p $1 -F 99 -a -g 
}


# source <(kubectl completion zsh)
[ -f $HOME/.cargo/env ] && source $HOME/.cargo/env

[ -f $HOME/.zoxide.sh ] && source $HOME/.zoxide.sh
# opam configuration
[[ ! -r ~/.opam/opam-init/init.zsh ]] || source ~/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
eval "$(opam env)"
#
# do not allow f# telementory
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export  PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

  export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"


[[ -f $HOME/.config/broot/launcher/bash/br ]] && source $HOME/.config/broot/launcher/bash/br
export PATH=~/bin:$PATH

export PATH=~/.config/emacs/bin:$PATH
# export PS1="${PS1} λλ >>  "

[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

export PS1='%{[1m[34m%}#%{[00m%} %(#,%{[43m%}%{[30m%}%n%{[00m%},%{[36m%}%n) %{[00m%}@ %{[32m%}%m %{[00m%}in %{[1m[33m%}%~%{[0;34m%}%B <- ($vcs_info_msg_0_) ->%{[0m%}%b  [%*] %(?,,C:%{[31m%}%?%{[00m%})
%{[1m[31m%}$ %{[00m%}'

export PATH="$PATH:$HOME/.dotnet/tools"

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
