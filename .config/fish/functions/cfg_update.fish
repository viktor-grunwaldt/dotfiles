function "cfg_update"
	set currDate (date -I)
	echo "test: $currDate"
	config commit -am "Automatic update on $currDate"
	config push
end
