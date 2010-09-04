# .bashrc
#
# define some variables
COLOR1="\[\033[0;34m\]"
COLOR2="\[\033[1;34m\]"
COLOR3="\[\033[0;36m\]"
COLOR4="\[\033[1;37m\]"
COLOR5="\[\033[0;37m\]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="$COLOR4[\A UTC] $COLOR3\u@\h$COLOR2:$COLOR2\w$COLOR5\\$ $COLOR5"

##### DEFAULTS #####

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# Color prompt
force_color_prompt=yes


# User specific aliases and functions

# Creates an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }



