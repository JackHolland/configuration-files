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
alias disk-usage="du -sk ./* | sort -n | awk 'BEGIN{ pref[1]="K"; pref[2]="M"; pref[3]="G";} { total = total + $1; x = $1; y = 1; while( x > 1024 ) { x = (x + 1023)/1024; y++; } printf("%g%s\t%s\n",int(x*10)/10,pref[y],$2); } END { y = 1; while( total > 1024 ) { total = (total + 1023)/1024; y++; } printf("Total: %g%s\n",int(total*10)/10,pref[y]); }'"
alias screen-size="xdpyinfo | grep 'dimensions:'"
export PATH=$PATH:~/bin
export PYTHONPATH=~/lib64/python2.7/site-packages:~/lib/python2.7/site-packages:$PYTHONPATH
source ~/.bash_completion.d/scp
source ~/.bash_completion.d/julia
source /etc/profile.d/vte.sh
