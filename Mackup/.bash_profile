alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF' 
alias lll='ls -alF --color=always |less -XR'
alias grep='grep --color=auto'

export CLICOLOR=1

# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
HII="\[\033[0;31m\]" #change this for letter colors
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"

export PS1="$NM[ $HI\u $HII\h $SI\w$NM ] $IN"

#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

##export PATH="/Users/ohgree/repositories/pennybot/bin/command:$PATH"
#export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
#export GUILE_TLS_CERTIFICATE_DIRECTORY="/usr/local/etc/gnutls/"
#export PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

#source /opt/bear/etc/pennyrc
