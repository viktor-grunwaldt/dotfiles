sway
fish
exit
sway
sudo sway
neofetch
nvim post-install.txt
cd repos/paru/
rustup
rustup update
rustup default stable
rustup update
rustup help
fish
qt5ct
firefox --private-window &
sh
make
comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)
comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq) > programs.txt
comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)
comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq) | tee "a.txt"
ls
cat a.txt 
mv a.txt programs.txt
ls
comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq) | tee "a.txt"
pacr
echo 'set completion-ignore-case On' >> /etc/inputrc
sudo echo 'set completion-ignore-case On' >> /etc/inputrc
echo 'set completion-ignore-case On' | sudo tee -a /etc/inputrc
tldr sleep
zathura ~/Downloads/zapisy.pdf 
find . -type d -name "target" -exec rm -r -I {} \;
man rm
find . -type d -name "target" -exec rm -r -vI {} \;
man rm
find . -type d -name "target" -exec rm -r -vi {} \;
find . -type d -name "target" -exec rm -r -vi {} \;
find . -type d -name "target"
find . -type d -name "target" -exec rm -r -v {} \;
declare
man ltrace
ls
cd $uwr/num/
ls
cd l1/
ls
cd zad2/
ls
la
cargo run
cat src/main.rs 
bat src/main.rs 
cd $uwr/num/l1/zad2/
ls
bat --theme OneHalfLight src/main.rs 
hx src/main.rs 
helix src/main.rs 
helix --help
helix -c /dev/null src/main.rs 
helix ~
helix ~/.bashrc 
source
hx .config/helix/config
hx .config/helix/config.toml 
hxl .config/helix/config.toml 
cd $uwr/num/l1/zad6/
hxl src/main.rs 
cargo run
hxl src/main.rs 
cargo run
strings /proc/(pgrep alacritty)/environ
strings /proc/$(pgrep alacritty)/environ
man man
man -P less man
pgrep xwayland
ps -e | grep -i x
cat .config/code-flags.conf 
code --verbose
xrandr
man exec
man exec
pkill --signal STOP xeyes
pkill --signal KILL xeyes
xeyes
xeyes
man pkill
man --pager pkill
man --pager more pkill
man --pager less pkill
tmux
man proc
man 5 proc
man 5 /proc/143/status
man 5 /proc/143/stats
man 5 /proc/143/stat
man 5 /proc/143/status
man 5 /proc/($$)/status
echo $$
man 5 /proc/$$/status
man 7 signals
kill -t
kill -L
man 7 signals
man 7 signal
gnome-terminal -e 'bash -i'
pidof sleep
sudo strace -e trace=signal -p (pidof sleep)
sudo strace -e trace=signal -p $(pidof sleep)
ps -ef 
ps -efww
ps -e -o pid,sid,ppid
ps -e -o pid,sid,ppid,command
ps
kill -9 2175
ps -e -o pid,sid,ppid,command
pidof sleep
fg
man ascii
man --pager=less ascii
$(echo -n aaa; sleep 5) | cat
read
man 4 termios
script -T timing -c dash
hx typescript 
hxl typescript 
rm typescript 
script -T timing -c dash
hx typescript 
hxl typescript 
scriptreplay -t timing
strace -f -e read,write -o script.log
 sudo strace -f -e trace=read,write -o script.log scriptreplay timing.timing timing.log
ls
 sudo strace -f -e trace=read,write -o script.log scriptreplay timing typescript
hx script.log 
hxl script.log 
ls -ld
ls -ld /
which ls
ls -la
man read
./so21_lista_5/listdir .
ls
debugfs .
tldr debugfs
seq 100 | mkdir 
seq 100 | xargs mkdir 
ls
seq 100 | xargs rm 
seq 100 | xargs rmdir
ls
mkdir temp
cd tepm
cd temp/
seq 65000 | mkdir
seq 65000 | xargs mkdir
ls
ls | wc
stat .
cd ..
shred temp/
rmdir temp/
rmdir temp/ -h
rmdir temp/ --help
rmdir temp/ -p
rm -r temp/
which ls
ls
/bin/ls
hx ~/.bash
hx ~/.bashrc 
helix ~/.bashrc 
ls -lia /usr/bin/cc
cc -h
cc --help
grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- | tail -n 1 | cut -d ' ' -f 4 | wl-copy 
grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- | tail -n 1 | cut -d ' ' -f 4[B
wl-paste
grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- | tail -n 1 | cut -d ' ' -f 4 | wl-copy #24273A
[200~#24273A
wl-paste 
wl-paste > ~/scripts/color-picker.sh
wl-paste 
cat ~/scripts/color-picker.sh 
wl-paste -h
wl-paste -v > color-picker.sh
wl-paste -v > color-picker.sh
wl-paste -v | tee color-picker.sh
ls
cat color-picker.sh 
mv color-picker.sh ~/scripts/
#!/usr/bin/env bash
# https://gitlab.com/wef/dotfiles/-/blob/master/bin/logit
# shellcheck disable=SC2034
TIME_STAMP="20230824.064228"
# Copyright 2021-2023 Bob Hepple < bob dot hepple at gmail dot com >
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at
# your option) any later version.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
case "$1" in     -h|--help)         echo "$( basename "$0" ): launch a process into background and add a prefix and datestamp to all output, suitable for logging";         exit 0;         ;; esac
               
CMD=$( basename "$1" )
exec "$@" 1>&1 2>&1 | while IFS= read -r line; do     printf "[$CMD: %s] %s\n" "$(date '+%Y-%m-%d %H:%M:%S')" "$line"; done &
# Local Variables:
# mode: shell-script
# time-stamp-pattern: "4/TIME_STAMP=\"%:y%02m%02d.%02H%02M%02S\""
# eval: (add-hook 'before-save-hook 'time-stamp)
# End:
wl-paste 
wl-paste > ./scripts/logit
chmod +x ./scripts/logit 
./scripts/logit echo
./scripts/logit
./scripts/logit -H
./scripts/logit -h
hx ~/repos/catppuccin/alacritty/*latte*
helix ~/repos/catppuccin/alacritty/*latte*
hxl ~/repos/catppuccin/alacritty/*latte*
ls
hxl catppuccin-latte.toml 
hxl catppuccin-latte.toml 
echo $HISTFILE
