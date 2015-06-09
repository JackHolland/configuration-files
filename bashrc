PS1="\[\e[00;32m\]$USER (\W):\[\e[00m\] "
alias d="cd"
alias up="cd .."
alias l="ls -B --color"
alias ll="l -l"
alias la="l -A"
alias lltr="ll -tr"
alias p="cat"
alias v="less"
alias e="nano"
alias f="grep --color"
alias g="git"
alias o="gvfs-open"
alias c="calc"
alias home="cd ~"
alias disk-usage="du -sk *| sort -n | cut -f2 |xargs -d'\n' du -hs $1"
alias screen-size="xdpyinfo | grep 'dimensions:'"
export PATH=$PATH:~/bin
export PYTHONPATH=~/lib64/python2.7/site-packages:~/lib/python2.7/site-packages:$PYTHONPATH
source ~/.bash_completion.d/scp
source ~/.bash_completion.d/julia
source /etc/profile.d/vte.sh
