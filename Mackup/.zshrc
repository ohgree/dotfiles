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
POWERLEVEL9K_MODE='nerdfont-complete'
#ZSH_THEME="powerlevel10k/powerlevel10k"

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
   cargo
   docker
   docker-compose
 )

# User configuration

# User name
DEFAULT_USER=`whoami`

#PATH=/usr/local/bin:/usr/local/sbin:$PATH

#export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="$HOME/.cargo/bin:$PATH"
# for YCM's rust semantic completion
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

eval `gdircolors ~/.dir_colors/solarized/dircolors.ansi-dark`
alias ls='gls --color=auto'
alias dir='gdir --color=auto'

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
alias lll='ls -alF --color=always |less -XR'
alias grep='grep --color=auto'
alias sudo='sudo '
alias mvim='mvim -v'
#alias vi='mvim -v'
alias vim='mvim -v'
alias vi='nvim'

#export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/config/database.yml

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# byobu settings
export BYOBU_PREFIX=/usr/local
export BYOBU_PYTHON=/usr/local/bin/python3

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

#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

#export PATH="/Users/ohgree/repositories/pennybot/bin/command:$PATH"
#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
#export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
#export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
#export PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
#export PATH="$(brew --prefix)/opt/gnu-tar/libexec/gnubin:$PATH"
#export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
#export GUILE_TLS_CERTIFICATE_DIRECTORY=$(brew --prefix)/etc/gnutls/
#export PATH="$(brew --prefix)/opt/gnu-indent/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

#source /opt/bear/etc/pennyrc

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk
#
## Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word

# Load the pure theme, with zsh-async library that's bundled with it.
#zinit ice pick"async.zsh" src"pure.zsh"
#zinit light sindresorhus/pure
zinit ice depth=1; zinit light romkatv/powerlevel10k

# A glance at the new for-syntax – load all of the above
# plugins with a single command. For more information see:
# https://zdharma.org/zinit/wiki/For-Syntax/
zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma/fast-syntax-highlighting \
                zdharma/history-search-multi-word 
    #light-mode pick"async.zsh" src"pure.zsh" \
                #sindresorhus/pure

# Binary release in archive, from GitHub-releases page.
# After automatic unpacking it provides program "fzf".
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin
