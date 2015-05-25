# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PS1="\[\e[00;32m\]$USER (\W):\[\e[00m\] "
alias d="cd"
alias up="cd .."
alias l="ls -B --color"
alias p="cat"
alias v="less"
alias e="nano"
alias f="grep --color"
alias g="git"
alias o="gvfs-open"
alias c="calc"
alias home="cd ~"
alias apptap="cd ~/Code/AppTap"
alias tap="cd ~/Code/AppTap/Tap/"
alias dim="xflux -l 43.70 -g -72.29"
alias now="date +%s"
export MSL_GSL=T
source ~/.bash_completion.d/scp.auto
source ~/.bash_completion.d/julia.auto
