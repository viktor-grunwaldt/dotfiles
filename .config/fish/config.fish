# alias ls=exa
abbr p sudo pacman -S
abbr c clear
# adds pip installed modules into path
fish_add_path -p "$HOME/.local/bin"

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
abbr gpom "git pull origin master"
abbr gcl "git clone"
abbr gclp "git clone (wl-paste)"

# remove files that are not under version control
abbr gcf "git clean -fd"
# discard changes in the working directory
abbr gcod "git checkout -- ."
# grab the latest upstream version
abbr gpum "git pull upstream master"
# delete branch from github. follow with branch name
abbr gpod "git push origin --delete"
# show git status without untracked files
abbr  gsu "git status -uno"
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

function repo-url -d "Open the current repo and branch on the website"
  set url (git config --get remote.origin.url | sed 's/:/\//' | sed 's/git@/https:\/\//' | sed 's/\.git//')
  set branch (git rev-parse --abbrev-ref HEAD)
  switch $url
    case "*bitbucket"
      echo "$url/branch/$branch"
    case "*"
      echo "$url/tree/$branch"
  end
end

# set -xg ELEM  "/run/media/vik77/Elements"
# set -xg VISUAL "nvim"
# set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# set -xg UWR "$HOME/Documents/uwr"
# source /usr/share/doc/find-the-command/ftc.fish

thefuck --alias | source
