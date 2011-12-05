#
# ~/.bashrc
#

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH=$PATH:$HOME/tools:$HOME/.rbenv/bin

alias b='bundle exec'

eval "$(rbenv init -)"
