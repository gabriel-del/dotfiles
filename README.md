# Dotfiles

I use [Arch Linux](https://wiki.archlinux.org/title/Main_page)
And [Lxqt  WM](https://lxqt-project.org/)

![](.system/demo/1.png)        |  ![](.system/demo/2.png) 
:-----------------------------:|:-------------------------:
![](.system/demo/3.png)        |  ![](.system/demo/4.png)      

### Shell
I use [Fish](https://fishshell.com/) with the replay, which allow me to have my aliases in sync with bash, update configs typing *aliases*
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

# System
I use 
[CryptSetup](https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system)
to encrypt the HardDrive
and [LVM](https://wiki.archlinux.org/title/LVM)

to allow dinamically manage the partitions

The cryptsetup is open automatically by kernel, and I can disable it anytime just typing
'sys-lock' on
Wich also enable the lockscree, for exemplo on vations/trip

It boot fast with systemd-boot,
does autologin with getty

'hd o' allow to open and mount encrypted HardDrive easily


Syncronize google-drive with insync
backup of phone with syncthing
Pacman download 10 packages at same time in parallel
Sudo set to don't even need put sudo, neither password






