# This file is sourced by login interactive bash shells
#
# on tty1:
# X is started by startx which is a wrapper around xinit
# xinit uses $HOME/.xinitrc
#
# on tty2 through tty6:
# accessed with CTRL-ALT f2-f6 
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then exec startx; fi

source /etc/profile
alias shutdown="shutdown -P now"
