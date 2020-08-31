# .zshrc
source ~/.zprofile

autoload -Uz vcs_info
precmd() {
    export COMPUTER_NAME="%m"

    vcs_info
    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:git*:*' get-revision true
    zstyle ':vcs_info:git*:*' check-for-changes true

    source ~/.prompt.zsh
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

PATH="/Users/hein/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/hein/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/hein/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/hein/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/hein/perl5"; export PERL_MM_OPT;

export YVM_DIR=/Users/hein/.yvm
[ -r $YVM_DIR/yvm.sh ] && source $YVM_DIR/yvm.sh
