#
# ~/.bashrc
#

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='[%F{green}%~%f] %F{magenta}${vcs_info_msg_0_}%f$ '

PATH=$(go env GOPATH)/bin:$HOME/.rbenv/bin:$PATH

# Set git autocompletion and PS1 integration
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto

# Set git autocompletion and PS1 integration
#. /usr/local/Cellar/git/2.19.0_2/etc/bash_completion.d/git-prompt.sh
#GIT_PS1_SHOWDIRTYSTATE=true

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
