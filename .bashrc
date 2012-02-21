# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

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

# User specific aliases and functions

alias cdmp='cd ~/ez/matpratny/extension/minmatprat/'
alias cdhp='cd ~/ez/haraldsplass/extension/haraldsplass/'
alias cdnl='cd ~/ez/nabolag/extension/nabolag/'
alias cdnhst='cd ~/ez/nhst/extension/nhst/'
alias cdd='cd ~/ez/demo/extension/demo/'

alias ezcc='php bin/php/ezcache.php --clear-all --purge'
alias ezgal='php bin/php/ezpgenerateautoloads.php -e'

alias cd..='cd ..'
alias ..='cd ..'

alias .='echo $PWD'
alias rm='rm -i'

alias ll='ls -lAXh --color=always'   #Show all, sort by extension
