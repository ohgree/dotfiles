export TERM="xterm-256color"

# locale setup
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

#fish-like truncation
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir vcs)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
   osx
   rbenv
   ruby
   virtualenv
   zsh-autosuggestions
   fast-syntax-highlighting
   zsh-plugin-ssh
   cargo
)

# User configuration

# User name
DEFAULT_USER=`whoami`

#PATH=/usr/local/bin:/usr/local/sbin:$PATH

export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/.cargo/bin:$PATH"
# for YCM's rust semantic completion
#export PATH="/var/folders/kr/0y0mh0vx5dl_sq9yx7bdynt80000gn/T/rust_install_wp78sf94/bin:$PATH"
#export PATH="`rustc --print sysroot`/lib/rustlib/src/rust/src:$PATH"
export PATH="$HOME/mytools:$PATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export CLICOLOR=1

# enable ls colors
export LSCOLORS=exfxcxdxbxeggdabagacad
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=36;43:su=0;41:sg=0;46:tw=0;30;42:ow=0;43:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF' 
alias scrnl='screen -list'
alias scrns='screen -S ohgree'
alias scrnr='screen -r'
alias scrn='screen'
alias lll='CLICOLOR_FORCE=1 ls -alF |less -XR'
alias grep='grep --color=auto'
alias sudo='sudo '
alias mvim='mvim -v'
alias vi='mvim -v'
alias vim='mvim -v'

#export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/config/database.yml

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# byobu settings
export BYOBU_PREFIX=/usr/local
export BYOBU_PYTHON=/usr/local/bin/python3

# wine-masm settings
source $HOME/.winerc

# my bash functions
source $HOME/.bash_utility

# thefuck Caveats
eval $(thefuck --alias)

# prevents tar to include "._*" files in macOS
export COPYFILE_DISABLE=true

# rbenv with openssl @1.1 HomeBrew
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# hyperterm + zsh copy & paste fix
#unset zle_bracketed_paste

export PATH="/usr/local/opt/llvm/bin:$PATH"
