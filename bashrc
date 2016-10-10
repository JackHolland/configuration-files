#!/bin/bash

function prompt() {
	echo -e '\[\e[0;32m\]$USER\[\e[0m\]\[\e[35m\]|\[\e[0m\]\[\e[0;36m\]\W\[\e[0m\]\[\e[35m\]|\[\e[0m\]\[\e[34m\]`prompt_date`\[\e[0m\]\[`prompt_retval_color`\]:\[\e[0m\] '
}

function prompt_date() {
	local exit_code=$?
	date +%R
	return $exit_code
}

function prompt_retval_color() {
	if [[ $? -eq 0 ]]; then
		echo -e '\e[1;31m'
	else
		echo -e '\e[33;41m'
	fi
}

export PS1="`prompt`"
alias d="cd"
alias up="cd .."
alias home="cd ~"
alias back="cd -"
alias l="ls -B --color"
alias ll="l -l"
alias la="l -A"
alias llt="l -lt"
alias lltr="l -ltr"
alias lld="l -ld"
alias lo="ls -l | sed -e 's/--x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r--/4/g' -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/---/0/g'"
alias r="echo"
alias p="cat"
alias v="less -R"
alias e="nano -A"
alias f="grep --color"
alias fn="grep --color -n"
alias fp="grep --color -P"
alias g="git"
alias o="gvfs-open"
alias c="calc"
alias j="julia"
alias py="python"
alias py3="python3"
alias pm="pymol"
alias gm="gnumeric"
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
alias copy="xclip -selection c"
alias fkill="pkill -9"
export PATH=$PATH:~/bin
export PYTHONPATH=~/lib64/python2.7/site-packages:~/lib/python2.7/site-packages:$PYTHONPATH
export HISTSIZE=32768
export AAS="ALA ARG ASN ASP CYS GLN GLU GLY HIS ILE LEU LYS MET PHE PRO SER THR TRP TYR VAL"
export aas="ala arg asn asp cys gln glu gly his ile leu lys met phe pro ser thr trp tyr val"
source ~/.bash_completion.d/scp
source ~/.bash_completion.d/julia
source ~/.bash_completion.d/edit
source /etc/profile.d/vte.sh
