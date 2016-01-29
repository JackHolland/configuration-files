#!/bin/bash

PS1="\[\e[0;32m\]$USER\[\e[0m\] (\[\e[0;36m\]\W\[\e[0m\])\[\e[1;31m\]:\[\e[0m\] "
alias d="cd"
alias up="cd .."
alias home="cd ~"
alias back="cd -"
alias l="ls -B --color"
alias ll="l -l"
alias la="l -A"
alias llt="l -lt"
alias lltr="l -ltr"
alias lo="ls -l | sed -e 's/--x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r--/4/g' -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/---/0/g'"
alias r="echo"
alias p="cat"
alias v="less -R"
alias e="nano -A"
alias f="grep --color -n"
alias g="git"
alias o="gvfs-open"
alias c="calc"
alias j="julia"
alias py="python"
alias pm="pymol"
alias md="mkdir"
alias rmr="rm -rf"
alias xtar="tar -xzf"
alias ctar="tar -czf"
alias ltar="tar -tf"
alias rel="sed '/^$/d'"
alias lc="wc -l"
alias b="lynx -accept_all_cookies"
alias disk-usage="du -sk *| sort -n | cut -f2 |xargs -d'\n' du -hs $1"
alias screen-size="xdpyinfo | grep 'dimensions:'"
alias lo-calc="libreoffice --calc"
alias please='sudo $(history -p \!\!)'
alias ding="notify-send Done"
alias dim="xflux -z 03755"
alias copy="xclip -selection c"
export PATH=$PATH:~/bin
export PYTHONPATH=~/lib64/python2.7/site-packages:~/lib/python2.7/site-packages:$PYTHONPATH
export HISTSIZE=32768
source ~/.bash_completion.d/scp
source ~/.bash_completion.d/julia
source /etc/profile.d/vte.sh
