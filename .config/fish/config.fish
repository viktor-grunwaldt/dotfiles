abbr p sudo pacman -S
abbr tree "eza --tree"
abbr uwr "cd $HOME/Documents/UWR"
# adds pip installed modules into path
fish_add_path -a "$HOME/.local/bin"
# ruby modules
# type -q gem && fish_add_path -a "$(gem env user_gemhome)/bin" || true
# tj git aliases
abbr gd "git diff -M"
abbr ga "git add"
abbr gaa "git add --all ."
abbr gbd "git branch -D"
abbr gs "git status"
abbr gca "git commit -a -m"
abbr gm "git merge --no-ff"
abbr gpt "git push --tags"
abbr gp "git push"
abbr grh "git reset --hard"
abbr gb "git branch"
abbr gcob "git checkout -b"
abbr co "git checkout"
abbr gba "git branch -a"
abbr gcp "git cherry-pick"
abbr gl "git log --pretty=format:\"%Cgreen%h%Creset - %Cblue%an%Creset @ %ar : %s\""
abbr gl2 "git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
abbr glv "git log --stat"
abbr gcl "git clone"
abbr gclp "git clone (wl-paste)"

# pull from origin; try to rebase
abbr gpom "git pull origin master --rebase"

# remove files that are not under version control
abbr gcf "git clean -fd"
# discard changes in the working directory
abbr gcod "git checkout -- ."
# grab the latest upstream version
abbr gpum "git pull upstream master"
# delete branch from github. follow with branch name
abbr gpod "git push origin --delete"
# show git status without untracked files
abbr gsu "git status -uno"
# commit -m
abbr gcm "git commit -m"
abbr gcv "git commit --verbose"
abbr gc "git commit --verbose"
# remove staged file
abbr grm "git reset HEAD"
# add current files, commit those file
abbr gacm "git add . --all; git commit --verbose"
# list the git tags by date
abbr gtd "git log --tags --simplify-by-decoration --pretty=\"format:%ai %d\""
# list stats for the repo
abbr grs "git shortlog -s -n --all --no-merges"
# print sorted, human readable sizes of current directory
abbr ls_size "du -xhla --max-depth 1 | sort -rh"
abbr z zathura
abbr z. "zathura *.pdf &"
abbr zz "swaymsg layout stacking && zathura *.pdf && swaymsg layout toggle split"
abbr mm "swaymsg layout stacking && mpv . && swaymsg layout toggle split"

abbr x "sxiv -ft *"
abbr readme "pandoc -t pdf README.md | zathura -"
abbr confed "find ~/.config/ -type f | fzf | xargs $VISUAL"
abbr npm pnpm
abbr py python
# typos
abbr pytohn python
abbr dc cd
abbr cd.. "cd .."


# thefuck --alias | source
source /opt/asdf-vm/asdf.fish
