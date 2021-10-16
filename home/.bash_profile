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

# Attribute codes:        00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:       30=black 31=red  32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes: 40=black 41=red  42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
