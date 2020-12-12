abbr p sudo pacman -S

alias ls=exa
abbr p sudo pacman -S
abbr c clear
alias config='/usr/bin/git --git-dir=/home/vik77/.cfg/ --work-tree=/home/vik77'

# tj git aliases
abbr -a gd "git diff -M"
abbr -a ga "git add"
abbr -a gaa "git add --all ."
abbr -a gbd "git branch -D"
abbr -a gs "git status"
abbr -a gca "git commit -a -m"
abbr -a gm "git merge --no-ff"
abbr -a gpt "git push --tags"
abbr -a gp "git push"
abbr -a grh "git reset --hard"
abbr -a gb "git branch"
abbr -a gcob "git checkout -b"
abbr -a gco "git checkout"
abbr -a gba "git branch -a"
abbr -a gcp "git cherry-pick"
abbr -a gl "git log --pretty=format:\"%Cgreen%h%Creset - %Cblue%an%Creset @ %ar : %s\""
abbr -a gl2 "git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
abbr -a glv "git log --stat"
abbr -a gpom "git pull origin master"
abbr -a gcd='cd "`git rev-parse --show-toplevel`"'

# my aliases
# remove files that are not under version control
abbr -a gcf "git clean -fd"
# discard changes in the working directory
abbr -a gcod "git checkout -- ."
# grab the latest upstream version
abbr -a gpum "git pull upstream master"
# delete branch from github. follow with branch name
abbr -a gpod "git push origin --delete"
# show git status without untracked files
abbr -a gsu "git status -uno"
# commit -m
abbr -a gcm "git commit -m"
abbr -a gcv "git commit --verbose"
abbr -a gc "git commit --verbose"
# diff in sublime
abbr -a gds "git diff | sublime"
# remove staged file
abbr -a grm "git reset HEAD"
# add current files, commit those file
abbr -a gacm "git add . --all; git commit --verbose"
# list the git tags by date
abbr -a gtd "git log --tags --simplify-by-decoration --pretty=\"format:%ai %d\""
# list stats for the repo
abbr -a grs "git shortlog -s -n --all --no-merges"

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
