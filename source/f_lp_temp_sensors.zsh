# Overwrite liquidprompt's temp sensors,
# since it used the SYSV sed conventions

_lp_temp_sensors () {
	local i
	for i in $(sensors |
            sed -nE "s/^(CPU|SYS|MB|Core|temp).*: *\+([0-9]*)\..°.*/\2/p")
	do
		[[ $i -gt $temperature ]] && temperature=$i
	done
}
