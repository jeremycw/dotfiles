#
# ~/.bashrc
#

PATH=$HOME/.rbenv/bin:$PATH:$HOME/tools:$HOME/android-sdk-mac_x86/platform-tools:$HOME/android-sdk-mac_x86/tools:/usr/local/mysql/bin

# Set git autocompletion and PS1 integration
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto

# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
   . /usr/local/git/contrib/completion/git-completion.bash
fi
if [ -f /usr/share/git/completion/git-completion.bash ]; then
   . /usr/share/git/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

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
alias tmux='TERM=screen-256color-bce tmux'
alias far='find . -type f | xargs perl -pi -e'
alias love="/Applications/love.app/Contents/MacOS/love"
export LSCOLORS='Bxgxfxfxcxdxdxhbadbxbx'

set -o vi
eval "$(rbenv init -)"


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
