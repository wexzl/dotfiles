```
▒█▀▀▄ ▒█▀▀▀█ ▀▀█▀▀ ▒█▀▀▀ ▀█▀ ▒█░░░ ▒█▀▀▀ ▒█▀▀▀█
▒█░▒█ ▒█░░▒█ ░▒█░░ ▒█▀▀▀ ▒█░ ▒█░░░ ▒█▀▀▀ ░▀▀▀▄▄
▒█▄▄▀ ▒█▄▄▄█ ░▒█░░ ▒█░░░ ▄█▄ ▒█▄▄█ ▒█▄▄▄ ▒█▄▄▄█
```
| Program                             | Name                                                                                           |
| :---                                | :---                                                                                           |
| Linux Distribution                  | [Kali Linux](https://www.kali.org/)                                                            |
| Shell                               | [Zsh](https://www.zsh.org/)                                                                    |
| Window Manager                      | [Bspwm](https://github.com/baskerville/bspwm)                                                  |
| Terminal Emulator                   | [Kitty](https://github.com/kovidgoyal/kitty)                                                   |
| Code Editor                         | [Nvim](https://neovim.io/)                                                                     |
| File Manager                        | [Ranger](https://github.com/ranger/ranger)                                                     |
| Bar                                 | [Polybar](https://github.com/jaagr/polybar)                                                    |
| Notification-Daemons                | [Dunst](https://github.com/dunst-project/dunst)                                                |
| Program Launcher                    | [Rofi](https://github.com/DaveDavenport/rofi)                                                  |
| Wallpaper Setter                    | [Feh](https://github.com/derf/feh)                                                             |
| Web Browser                         | [Brave](https://brave.com/)                                                                    |
| Icon Theme                          | [ACYLS](https://github.com/worron/ACYLS)                                                       |
| Text Editors/GTK/Colorscheme        | [Gotham](https://github.com/whatyouhide/vim-gotham)|[Gotham-gtk](https://github.com/nullx002/github-gotham-theme)|[Gotham-contrib](https://github.com/whatyouhide/gotham-contrib)|
| Text Editors/Terminal font          | [JetBrains](https://github.com/JetBrains/JetBrainsMono)                                        |
| Document Viewer                     | [Zathura](https://pwmt.org/projects/zathura/)                                                  |
| Composit Manager                    | [Picom](https://github.com/yshui/picom)                                                        |

### [Screenshots]
#### Home
#### Nvim
#### rofi
#### wallpapers

### [Install]
**
#### Based: ##### xorg
```sh
sudo apt-get install xorg bspwm sxhkd alsa-utils
```
#### Programs
```sh
sudo apt-get install ranger git feh dunst polybar kitty zathura zathura-djvu neovim rofi mpv rtorrent sxiv links2
```
#### System
```sh
sudo apt-get install meson mesa-utils firmware-linux gcc cmake ninja-build
```
#### Additional programs
```sh
sudo apt-get install gvfs iwd dhcpcd5 xclib xbacklight libnotify-bin udiskie udisks2
```
#### Development
```sh
sudo apt-get install python3 pithon3-pip php curl
```
#### Archiver
```sh
sudo apt-get install unrar unzip p7zip-full
```
#### Font
```sh
sudo apt-get install font-jetbrains-mono font-awesome fonts-noto
```
### Dependencies
#### Picom customized
```sh
linbpce3-dev policykit-1-gnome libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev 
```
### bsp-layout
[bsp-layout](https://github.com/phenax/bsp-layout)
#### Install bsp-layout
```sh
curl https://raw.githubusercontent.com/phenax/bsp-layout/master/install.sh | bash -;
```
