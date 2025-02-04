# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

[[ -f /opt/vultr/vultr_app.sh ]] && . /opt/vultr/vultr_app.sh

export EDITOR=vim

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto --group-directories-first'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS -hN'
alias la='ls $LS_OPTIONS -haN'
alias ll='ls $LS_OPTIONS -lhF --time-style=long-iso'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -iv'
alias mv='mv -i'
alias del='history -c'

# SystemD and Journal aliases to limit typing
alias s='systemctl'
alias lsu='systemctl list-units --type=service'
alias ass='systemctl --type=service --state=active'
alias rss='systemctl --type=service --state=running'
alias j='journalctl -xe'
alias jbooterror='journalctl -p 3 -b'

HISTCONTROL=ignoreboth
HISTSIZE= HISTFILESIZE= # Infinite History
HISTTIMEFORMAT="%Y-%m-%d %T "


# Extras
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'



# Show external ip address
alias extip='curl icanhazip.com'

# Pull abbreviated manpage commands from the web
function cheat {
    /usr/bin/curl https://cheat.sh/$1
}
alias cheat='cheat'
