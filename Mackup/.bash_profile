alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF' 
alias scrnl='screen -list'
alias scrns='screen -S ohgree'
alias scrnr='screen -r'
alias scrn='screen'
#alias python='python3'
alias lll='ls -alF |less -X'
alias john='/john/run/john'
alias grep='grep --color=auto'

export CLICOLOR=1

# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
HII="\[\033[0;31m\]" #change this for letter colors
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"

export PS1="$NM[ $HI\u $HII\h $SI\w$NM ] $IN"

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


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

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

NPM_PACKAGES="${HOME}/.npm-packages"

exec ~/bin/zsh -l
