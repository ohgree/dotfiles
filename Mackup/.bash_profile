alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF' 
alias lll='ls -alF |less -X'
alias grep='grep --color=auto'

export CLICOLOR=1

# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
HII="\[\033[0;31m\]" #change this for letter colors
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"

export PS1="$NM[ $HI\u $HII\h $SI\w$NM ] $IN"

#if [ "$TERM" != "dumb" ]; then
#    export LS_OPTIONS='--color=auto'
#	     eval `dircolors ~/.dir_colors`
#		  fi

# Useful aliases
#		  alias ls='ls $LS_OPTIONS -hF'
#		  alias ll='ls $LS_OPTIONS -lhF'
#		  alias l='ls $LS_OPTIONS -lAhF'
#		  alias cd..="cd .."
#		  alias c="clear"
#		  alias e="exit"
#		  alias ssh="ssh -X"
#		  alias ..="cd .."

