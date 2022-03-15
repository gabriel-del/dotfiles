# Dotfiles

I use [Arch Linux](https://wiki.archlinux.org/title/Main_page)


And [Lxqt](https://lxqt-project.org/) WM

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

Editor: [nvim](https://neovim.io/) and [kakoune](https://kakoune.org/) and vscode on gui
file manager: thunar
browser [Brave browser](https://brave.com/)
terminal: kitty
theme: Midnight-blue (midnight-gtk-theme-git)
icons: BeautyLine
font: nerdfonts
cursor: sweet-cursors (sweet-cursor-theme-git)

My system have 
[CryptSetup](https://gitlab.com/cryptsetup/cryptsetup)
<sup>[ArchWiki](https://wiki.archlinux.org/title/LVM)</sup>
to encrypt the HardDrive
and [LVM](https://wiki.archlinux.org/title/LVM)
to allow dinamically manage partitions

The cryptsetup is open automatically and I just disable on vacations/trips (syslock lockscreen)
boot fast with systemd-boot
Autologin with getty
Syncronizate google-drive with insync
backup of phone with syncthing
Pacman download 10 packages at same time in parallel
Sudo set to don't even need put sudo, neither password
gg open crypt hd easily





