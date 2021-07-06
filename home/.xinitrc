export ALSA_CARD="Generic"
synclient palmdetect=1
synclient TapButton1=1 # left click
synclient TapButton2=3 # right click

# man xkeyboard-config
setxkbmap -option caps:ctrl_modifier
setxkbmap se,apl -option grp:alt_space_toggle

# for SSH keys
eval $(ssh-agent)

exec i3
