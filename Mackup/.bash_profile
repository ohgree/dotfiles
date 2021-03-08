alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF' 
alias scrnl='screen -list'
alias scrns='screen -S ohgree'
alias scrnr='screen -r'
alias scrn='screen'
#alias python='python3'
alias lll='ls -alF |less -X'
alias grep='grep --color=auto'

export CLICOLOR=1

function ccmp {
	src=$1
	if [ ${#src} -eq 0 ]
		then
		echo "Usage: ccmp filename"
	elif [ ${#2} -ne 0 ]
		then
		echo "Usage: ccmp filename"
	elif [ ! -f $1 ]
		then
		echo "No file named $1 exists."
	elif [ "${src:${#src}-2:${#src}}" != ".c" ]
		then
		echo "The file given is not a C source file!"
	else
		gcc -o ${src:0:${#src}-2} $src
	fi
}

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

PATH=/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/john/run:/Library/Frameworks/Python.framework/Versions/3.4/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/.cargo/bin:$PATH"
