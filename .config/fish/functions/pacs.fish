# fzf aided package installer
function pacs
    pacman -Slq | fzf --prompt 'pacman> ' \
        --header 'Install packages.
<c-p>: pacman, <c-a>: aur' \
        --bind 'ctrl-p:change-prompt(pacman> )+reload(pacman -Slq)' \
        --bind 'ctrl-a:change-prompt(aur> )+reload(paru -Slq)' \
        --multi --height=80% --preview 'paru -Si {1}' \
        --preview-window bottom | xargs -ro paru -S
    pacman -Qqe >~/.config/pac-kages.txt
end
