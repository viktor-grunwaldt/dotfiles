function cfg_update
    set currDate (date -I)
    config commit -am "Automatic update on $currDate"
    config push
end
