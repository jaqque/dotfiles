##################
# Battery status #
##################

# Get the battery status in percent
# returns 0 (and battery level) if battery is discharging and under threshold
# returns 1 (and battery level) if battery is discharging and above threshold
# returns 2 (and battery level) if battery is charging but under threshold
# returns 3 (and battery level) if battery is charging and above threshold
# returns 4 if no battery support, or fully charged
_local_lp_battery()
{
    [[ "$LP_ENABLE_BATT" != 1 ]] && return
    local acpi
    acpi="$(acpi --battery 2>/dev/null)"
    # Extract the battery load value in percent
    # First, remove the beginning of the line...
    local bat="${acpi#Battery *, }"
    bat="${bat%%%*}" # remove everything starting at '%'

    if [[ -z "${bat}" ]] ; then
        # not battery level found
        return 4
	fi

	case "$acpi" in
		*Discharging*)
			if [[ ${bat} -le $LP_BATTERY_THRESHOLD ]] ; then
				# under threshold
				echo -n "${bat}"
				return 0
			else
				# above threshold
				echo -n "${bat}"
				return 1
			fi
			;;
		*Charging*)
			if [[ ${bat} -le $LP_BATTERY_THRESHOLD ]] ; then
				# under threshold
				echo -n "${bat}"
				return 2
			else
				# above threshold
				echo -n "${bat}"
				return 3
			fi
			;;
		*Charged*)
			return 4
			;;
    esac
}
