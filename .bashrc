# This file is sourced by non-login interactive bash shells
source /etc/profile

# Add color to Keepass files on ls output
LS_COLORS="$LS_COLORS:*.kdbx=00;35"

# Attribute codes:        00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:       30=black 31=red  32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes: 40=black 41=red  42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white


### .bash_profile
# in inputrc instead #setterm --blength 0 

#dir -1 | xe -n rm
#dir -1 | xe file | column -s : -t -o '|' 
#dir -1 | xe file | awk -F : '{ print $2 "|" $1 }' | column -t -s '|' -o ' | ' | sort

#alias dir="dir -1 -N"
dir () ( printf './%s\n' "$@" )

filter ()
(
	# recommended quotation:
	# dir | filter -v 'expr "$(file $1)" : ".*MP4"'

	# and not:
	# dir | filter -v "expr '$(file $1)' : '.*MP4'"

	if [[ "$1" == '-v' ]]; then
		INPUT="$2"
		xe -n -s "( $INPUT > /dev/null ) && echo \$1"
		exit
	fi

	INPUT="$1"
	xe -s "( $INPUT > /dev/null ) && echo \$1"
)

# dir | xe -- rm -i
# xe -f <(dir) -- rm -i

# xargs will not work because it uses stdin to build the commands.
# Since stdin is already in use, you cannot input the response.

# The reason is, that by default xargs gets its input from stdin but
# interactive applications also expect input from stdin. 

# To get xargs to work with interactive commands you have to use the
# --arg-file=FILE argument (short -a FILE). This tells xargs to get the
# arguments from FILE. This also leaves stdin unchanged.

alias ffplay="ffplay -v 16 -autoexit"
alias sxiv="sxiv -p -a"
alias suspend="systemctl suspend"
alias shutdown="shutdown -P now"
alias apl="TERM=xterm apl --PW 132"

#ps -e --sort -%mem -o '%C %U %G : %a' | head
#ps -e --sort -%mem -o %cpu,%mem,cmd | head
export ALSA_CARD="Headset"
