function repo-url --description 'Open the current repo and branch on the website'
    set url (git config --get remote.origin.url | sed 's/:/\//' | sed 's/git@/https:\/\//' | sed 's/\.git//')
    set branch (git rev-parse --abbrev-ref HEAD)
    switch $url
        case "*bitbucket"
            echo "$url/branch/$branch"
        case "*"
            echo "$url/tree/$branch"
    end
end
