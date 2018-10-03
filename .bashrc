#
# ~/.bashrc
#

PATH=$HOME/.rbenv/bin:$PATH

# Set git autocompletion and PS1 integration
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto

# Set git autocompletion and PS1 integration
. /usr/local/Cellar/git/2.19.0_2/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

GREEN="\[\033[38;5;112m\]"
PURPLE="\[\033[38;5;139m\]"
FG="\[\033[00m\]"
PS1="[$GREEN\w$FG]$PURPLE\$(__git_ps1)$FG$ "

alias ls='ls -G'

alias gs='git status -s'
alias gco='git checkout '
alias gpl='git pull origin '
alias gpu='git push origin '
alias ga='git add '
alias gc='git commit -m '
alias gm='git merge'
alias b='bundle exec'
export LSCOLORS='Bxgxfxfxcxdxdxhbadbxbx'

set -o vi
eval "$(rbenv init -)"
