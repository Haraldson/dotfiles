emulate sh -c 'source ~/.profile'

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# Open new tabs in same directory
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
    function chpwd {
        printf '\e]7;%s\a' "file://$HOSTNAME${PWD// /%20}"
    }

    chpwd
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Coloring the prompt
export BLACK=$(tput setaf 0)
export BLUE=$(tput setaf 61)
export BROWN=$(tput setaf 52)
export CYAN=$(tput setaf 75)
export GRAY=$(tput setaf 243)
export GREEN=$(tput setaf 71)
export MAGENTA=$(tput setaf 54)
export ORANGE=$(tput setaf 172)
export PINK=$(tput setaf 125)
export PURPLE=$(tput setaf 89)
export RED=$(tput setaf 160)
export YELLOW=$(tput setaf 184)
export WHITE=$(tput setaf 256)
export BOLD=$(tput bold)
export RESET=$(tput sgr0)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$(rbenv init -)"
