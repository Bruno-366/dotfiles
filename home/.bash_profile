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

alias ffplay="ffplay -v 16 -autoexit -nodisp"
alias suspend="systemctl suspend"

export ALSA_CARD=Generic                        # Set default sound output
export LS_COLORS="$LS_COLORS:*.kdbx=00;35"      # Add color to KeePass files on ls output
