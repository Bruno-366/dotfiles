# dotfiles
My dotfiles for [ArchLinux]

## Desktop Enviroment

0. bash with [`.bashrc`] or [`.bash_profile`]
1. startx (wrapper around xinit) with file [`.xinitrc`]
2. i3wm with file 
   1. [`st`]
   2. [`ranger`] 
   3. [`surf`]

[ArchLinux]: http://archlinux.org/
[`.xinitrc`]: ./home/.xinitrc
[`.bashrc`]: ./home/.bashrc
[`.bash_profile`]: ./home/.bash_profile
[`st`]: https://st.suckless.org/
[`surf`]: https://surf.suckless.org/
[`ranger`]: https://ranger.github.io/

## Sound

Use ALSA instead of pulse-audio  

in [`.xinitrc`]:
```sh
export ALSA_CARD="Generic"
```
sets the default sound output device to the inbuild speakers  

using surf:

```sh
ALSA_CARD=Generic surf # this becomes redundant, its the implied default
ALSA_CARD=Headset surf # if you want to use the headset
```

Unfortunately, you can't change the enviroment variables of an already running process.

## APL

Have two settings for APL: in .bashrc and [`.xinitrc`]

## Shutdown, Poweroff, Suspend, Hibernate etc.

```sh
# use poweroff instead of:
# alias shutdown="shutdown -P now"
```
