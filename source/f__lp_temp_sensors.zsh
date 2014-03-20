_lp_temp_sensors () {
	local count=0
	local temperature=0
	for i in $(sensors | grep -E "^(Core|temp)" |
            sed -E "s/.*: *\+([0-9]*)\..°.*/\1/g")
	do
		temperature=$(($temperature+$i)) 
		count=$(($count+1)) 
	done
	echo -ne "$(($temperature/$count))"
}
