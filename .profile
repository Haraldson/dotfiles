# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# separate history per terminal tab
# export HISTFILE="$HOME/.bash_history_$TERM_SESSION_ID"
# if [ ! -e $HISTFILE ]; then cp "$HOME/.bash_history" "$HISTFILE"; fi


# User specific aliases and functions

alias cd..='cd ..;echo $PWD'
alias ..='cd ..;echo $PWD'
alias ...='cd ../..;echo $PWD'
alias ....='cd ../../..;echo $PWD'

alias www='cd ~/www/'
alias ios='cd ~/ios/'

alias unmv='mv !$ !^'

alias cleardns='dscacheutil -flushcache'

alias .='echo $PWD'

alias vi='vim'

alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias grep='grep -i'

alias l='ls -lAx --color=always'   #Show all, sort by extension
alias ll='ls -l'
alias la='ls -la'

alias x='exit'
alias c='clear'
alias cl='c;l'

alias fucking='sudo'
