# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source /home/mdresser/.p4rc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

force_color_prompt=yes
alias pd=pushd

export CW="/home/mdresser/perforce/mdresserDevBox/Arclight/ArcLight/Terminal/SW/TXR/main"
export ST="/home/mdresser/perforce/mdresserDevBox/Arclight/ArcLight/Terminal/SW/TXR-INT/sandbox/SmokeTest"

export P4USER="mdresser"
export P4PORT="perforce:2002"
export P4CLIENT="mdresserDevBox"
export P4EDITOR="vim"

alias smoketest='cd $ST'
alias main='cd $CW'
alias 1x='export ARCH=vmbr1xxx'
alias 4x='export ARCH=vmbr4xxx'
alias grep='grep --color=auto'
