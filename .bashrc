# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias main='cd /usr/local/git_tree/main/';
alias lib='cd /usr/local/git_tree/main/lib';
alias db='cd /usr/local/git_tree/main/lib/Bookings/Db';
export TERM="xterm-256color";

function push-to-git() {
    until git pull --rebase && git push; do sleep 0.1; done
}
