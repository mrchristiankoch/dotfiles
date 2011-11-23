# hello
# .bashrc
#
# set  some color variables

COLOR1="\[\033[0;34m\]"
COLOR2="\[\033[0;31m\]"
COLOR3="\[\033[0;36m\]"
COLOR4="\[\033[1;37m\]"
COLOR5="\[\033[0;37m\]"
COLOR6="\[\033[1;34m\]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# my ps1

PS1="$COLOR5[\A UTC] $COLOR3\u@\h$COLOR2:$COLOR2\w$COLOR5\\$ $COLOR5"

##### DEFAULTS #####

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Color prompt
force_color_prompt=yes

# history stuff 

HISTCONTROL=ignoreboth
HISTTIMEFORMAT='[%F %T ] '
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# exoort stuff (man environ)
# set my local domains
export LOCALDOMAIN="domain.com local.domain.com"
export EDITOR=vim       # Default Editor
export VISUAL=$EDITOR   # Visual not really used differently from EDITOR anymore
export LESS='-iMR'      # Case insensite search, verbose prompting and raw output
export PAGER=less       # Used to display text / man files

# aliases and functions

# Creates an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

# aliases to make things easier
alias ll='ls -l'
alias la='ls -a'
alias ls='ls --color=yes' 
alias s='ssh'
alias t='telnet'
alias rm='rm -i'
alias df='df -h'
alias cp='cp -i'
alias mv='mv -i'
alias s='ssh'
alias dig='dig +nocomments +nocmd +nostats'
alias grep='grep -i --color'
alias vi='vim'
alias mkdir='mkdir -p'
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'

#copies folder and all sub files and folders, preserving security and dates
alias cp_folder="cp -Rpv"

#simple password generating function
alias mkpass='echo `</dev/random tr -dc A-Za-z0-9 | head -c8`'

# machines

# route servers/looking glass
alias as22822='telnet route-server.llnw.net'
alias as3549='telnet route-server.gblx.net'
alias routeviews='telnet route-views.routeviews.org'
alias as7922='telnet route-server.newyork.ny.ibone.comcast.net'
alias as7018='telnet route-server.ip.att.net'
alias as7132='telnet route-server.sbcglobal.net'
alias as4436='telnet route-server.nlayer.net'
alias as3257='telnet route-server.ip.tiscali.net'
alias as4323='telnet route-server.twtelecom.net'
alias as3292='telnet route-server.ip.tdc.net'
alias as6939='telnet route-server.he.net'


