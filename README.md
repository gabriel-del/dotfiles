# Dotfiles

I use [Arch Linux](https://wiki.archlinux.org/title/Main_page)
And [Lxqt  WM](https://lxqt-project.org/)

![](.system/demo/1.png)        |  ![](.system/demo/2.png) 
:-----------------------------:|:-------------------------:
![](.system/demo/3.png)        |  ![](.system/demo/4.png)      

### Graphical Interface
* File manager: [Thunar](https://wiki.archlinux.org/title/Thunar)
* Browser [Brave browser](https://aur.archlinux.org/packages/brave-bin)
* Editor: [Nvim](https://wiki.archlinux.org/title/Neovim), [kakoune](https://wiki.archlinux.org/title/Kakoune) 
and [VScode](https://wiki.archlinux.org/title/Visual_Studio_Code) 
* Terminal: [Kitty](https://wiki.archlinux.org/title/Kitty)
* System Monitor: [Conky](https://wiki.archlinux.org/title/Conky)
* Theme: [Midnight-blue](https://aur.archlinux.org/packages/midnight-gtk-theme-git)
* Icons: [BeautyLine](https://aur.archlinux.org/packages/beautyline)
* Cursor: [Sweet-Cursors](https://aur.archlinux.org/packages/sweet-cursor-theme-git)
* Font: [Nerdfonts](https://aur.archlinux.org/packages/nerd-fonts-complete)

### Shell
[Fish](https://fishshell.com/)
with the [Replay](https://github.com/jorgebucaran/replay.fish)
is the best combination,
it allow to have [Aliases](https://wiki.archlinux.org/title/Bash#Aliases)
in sync with [Bash](https://wiki.archlinux.org/title/Bash)

On *.aliases* and *.bin* there is configs as:


update configs typing *aliases*
Which includ my path setted statically on both
Auto sudo, without even need type sudo, neither password
i <package> to install any package
c <part of folder name> to enter any folder
ex: c Sys instead of cd 'System Volume Information'
e <part of file name> allow me to modify any file, with root permition, but user configs
ex: e pac -> sudo -E nvim pacman.conf
mountp to mount vfat filesystems with user permission

shortcuts as:
...='cd ../.. && ls'

backup all important system files using sys-backup-system
sync easily with git, have a perfet .gitignore
save list of instaled files with sys-programs, to use on next formatation
kitty,mpv, conky totally configured 

'hd o' allow to open and mount encrypted HardDrive easily

# System
All this files are inside *.system*
[CryptSetup](https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system)
to encrypt the HardDrive
and [LVM](https://wiki.archlinux.org/title/LVM)
to allow dinamically manage the partitions

The **cryptsetup** is open automatically by kernel, and can be disabled at anytime just by typing
```bash
sys-lock on
``
Wich also enable the screen locker 
[XscreeSaver](https://wiki.archlinux.org/title/XScreenSaver)
, for exemple on vations and trips

It boot fast with [Systemd-Boot](https://wiki.archlinux.org/title/Systemd-boot),
does autologin with [Getty](https://wiki.archlinux.org/title/Getty).

Allow [Pacman](https://wiki.archlinux.org/title/Pacman)
to install 10 packages at same time in parallel.

Use [Insync](https://wiki.archlinux.org/title/Insync) 
to sync with [google-drive](http://drive.google.com/) automatily
and [Syncthing](https://wiki.archlinux.org/title/Syncthing)
to sync whith smartphone.










