PS1="\[\e[00;32m\]$USER (\W):\[\e[00m\] "
alias d="cd"
alias up="cd .."
alias home="cd ~"
alias back="cd -"
alias l="ls -B --color"
alias ll="l -l"
alias la="l -A"
alias lltr="ll -tr"
alias lo="ls -l | sed -e 's/--x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r--/4/g' -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/---/0/g'"
alias p="cat"
alias v="less -R"
alias e="nano"
alias f="grep --color"
alias g="git"
alias o="gvfs-open"
alias c="calc"
alias m="pymol"
alias md="mkdir"
alias rmr="rm -rf"
alias disk-usage="du -sk *| sort -n | cut -f2 |xargs -d'\n' du -hs $1"
alias screen-size="xdpyinfo | grep 'dimensions:'"
alias lo-calc="libreoffice --calc"
alias please='sudo $(history -p \!\!)'
export PATH=$PATH:~/bin
export PYTHONPATH=~/lib64/python2.7/site-packages:~/lib/python2.7/site-packages:$PYTHONPATH
source ~/.bash_completion.d/scp
source ~/.bash_completion.d/julia
source /etc/profile.d/vte.sh
