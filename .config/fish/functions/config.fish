function config --wraps=/usr/bin/git --git-dir=/home/vi/.cfg/ --work-tree=/home/vi
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end
