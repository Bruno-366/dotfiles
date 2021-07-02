# dotfiles
My dotfiles for [ArchLinux]

## Desktop Enviroment

0. login `bash` shell with [`.bash_profile`]
1. `startx` (wrapper around `xinit`) with file [`.xinitrc`]
2. i3wm with file ???
   1. [`st`] with non-login `bash` shell using [`.bashrc`] 
   3. [`ranger`] 
   4. [`surf`]

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

# Finding modified files

```sh
pacman -Qkk
```

For example

```sh
   : # check which package owns a file
   : pacman -Qo /etc/i3status.conf
/etc/i3status.conf is owned by i3status 

   : # If no changes were made:
   : pacman -Qkk i3status
i3status: 12 total files, 0 altered files

   : # If some changes were made:
   : pacman -Qkk i3status
backup file: i3status: /etc/i3status.conf (Modification time mismatch)
backup file: i3status: /etc/i3status.conf (Size mismatch)
backup file: i3status: /etc/i3status.conf (MD5 checksum mismatch)
backup file: i3status: /etc/i3status.conf (SHA256 checksum mismatch)
i3status: 12 total files, 0 altered files
```

