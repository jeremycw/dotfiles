#
# ~/.bashrc
#

PATH=$HOME/.rbenv/bin:/usr/local/opt/llvm/bin:$PATH:$HOME/tools:$HOME/android-sdk-mac_x86/platform-tools:$HOME/android-sdk-mac_x86/tools:/usr/local/mysql/bin:/usr/local/Gambit-C/bin

# Set git autocompletion and PS1 integration
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto

# Set git autocompletion and PS1 integration
. $HOME/.git-contrib/completion/git-completion.bash
. $HOME/.git-contrib/completion/git-prompt.sh
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

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
#export COCOS_CONSOLE_ROOT=/Users/jeremy/Downloads/cocos2d-x-3.0/tools/cocos2d-console/bin
#export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
#export ANT_ROOT=/usr/bin
#export PATH=$ANT_ROOT:$PATH

# OPAM configuration
. /Users/jeremy/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/jeremy/code/cocos2d-x-3.6/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/jeremy/code/cocos2d-x-3.6/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Users/jeremy/code/ndk
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/jeremy/code/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/Cellar/ant/1.9.4/libexec/bin
export PATH=$ANT_ROOT:$PATH
