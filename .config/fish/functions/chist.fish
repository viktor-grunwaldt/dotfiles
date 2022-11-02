# command history with number of uses
function chist
    if test -z $argv[1]
        history | awk '{print $1}' | sort | uniq -c | sort -nr | less
    end
end
