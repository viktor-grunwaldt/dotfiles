function pacr
    pacman -Qq | fzf --prompt 'all> ' \
        --header='Remove packages.
<c-a>: all, <c-e>: explicit, <c-y>: aur-explicit' \
        --bind 'ctrl-a:change-prompt(all> )+reload(pacman -Qq)' \
        --bind 'ctrl-e:change-prompt(exp> )+reload(pacman -Qe)' \
        --bind 'ctrl-y:change-prompt(aur> )+reload(pacman -Qm)' \
        --multi --height=80% --preview 'paru -Si {1}' \
        --preview-window bottom | xargs -ro sudo pacman -Rsn
    pacman -Qqe >~/.config/pac-kages.txt
end
