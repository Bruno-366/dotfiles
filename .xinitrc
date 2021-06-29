# put it in xinit
# instead of bashrc
# to be more deliberate
xset -b

# in inputrc instead
#
# # .bash_profile
# # for beeps in vim
#setterm --blength 0 

# ## END: beep

export ALSA_CARD="Generic"
#export ALSA_CARD="Headset"
synclient palmdetect=1
synclient TapButton1=1 # left click
synclient TapButton2=3 # right click

# man xkeyboard-config
setxkbmap -option caps:ctrl_modifier
setxkbmap se,apl -option grp:alt_space_toggle

# for SSH keys
eval $(ssh-agent)

exec i3

# inotifywait -qe open /dev/snd/timer
# xautolock -disable
# inotifywait -qe close /dev/snd/timer
# xautolock -enable
