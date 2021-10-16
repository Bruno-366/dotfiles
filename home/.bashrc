# This file is sourced by non-login interactive bash shells
source /etc/profile

# Add color to Keepass files on ls output
LS_COLORS="$LS_COLORS:*.kdbx=00;35"

# Attribute codes:        00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:       30=black 31=red  32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes: 40=black 41=red  42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white

alias ffplay="ffplay -v 16 -autoexit"
alias sxiv="sxiv -p -a"
alias suspend="systemctl suspend"
surf () { command surf ${1:-https://duckduckgo.com}; }  # Set homepage for surf
