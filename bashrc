# .bashrc
# ~/.bashrc: executed by bash(1) for non-login shells.

# defines
EDITOR=nano
VISUAL=nano

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm|xterm-color)
	PS1='${chroot:+($chroot)}\[\033[1;34m\]\u\[\033[1;36m\]@\[\033[1;32m\]$(hostname -f)\[\033[1;37m\]:\[\033[1;31m\]\w\[\033[1;36m\]\$ \[\033[0m\]'
	;;
*)
	PS1='${chroot:+($chroot)}\u@\h:\w\$ '
	;;
esac

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export PS1

# Necessary for programmable completion.
shopt -s extglob

