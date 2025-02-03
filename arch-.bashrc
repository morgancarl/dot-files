#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim

# If directory bin/ exists in user's home directory then add it to the $PATH
if [ -d ~/.bin ]
then
  PATH=$PATH:~/.bin
fi

# Custom Aliases added to bash
alias l='ls --color=auto --group-directories-first'
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -lhF --time-style=long-iso --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cp='cp -iv'
alias mv='mv -iv'
alias del='history -c && exit'


alias s='systemctl'
alias services='systemctl list-units --type=service'
alias services-active='systemctl --type=service --state=active'
alias services-running='systemctl --type=service --state=running'

alias j='journalctl'

# locate alias needs package plocate installed
# alias locate='plocate'

# Show external ip address 
alias extip='curl icanhazip.com'

# Pull abbreviated manpage commands from the web
function cheat {
    /usr/bin/curl https://cheat.sh/$1
}
alias cheat='cheat'

[ ! -e ~/.dircolors ] && eval $(dircolors -p > ~/.dircolors)
[ -e /bin/dircolors ] && eval $(dircolors -b ~/.dircolors)


# ##Morgan don't put duplicate lines or lines starting with space in the history. ##Morgan
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Set history format to include timestamps
HISTTIMEFORMAT='%Y-%m-%d %T '

# ##Morgan for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE= HISTFILESIZE= # Infinite history. 

PS1='[\u@\h \W]\$ '
