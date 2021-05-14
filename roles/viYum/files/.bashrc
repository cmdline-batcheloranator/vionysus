# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

branch() { 
  git branch 2> /dev/null    \
     | grep \*               \
     | awk '{print$2}'       \
     | sed -e 's/^/(/g'      \
     | sed -e 's/$/)/g'
 }


PS1='`tput sgr0` \W:`tput setaf 8` `branch` `tput setaf 4` \n ---> '
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPS="--extended"
