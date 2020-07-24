#!/bin/sh

Workspaces() {
	indesks=$(bspc query -D --names)
	focused=$(bspc query -D --names -d focused)

	for desktop in $indesks; do
		desktop=$(echo "$desktop")
		nodes=$(bspc query -N -d $desktop)

		if [ ! -z "$nodes" ]; then
			if [ $desktop = $focused ]; then
				outdesks=$(echo "$outdesks%{R} [x] %{R}")
			else
				outdesks=$(echo "$outdesks [x] ")
			fi
		else
			if [ $desktop = $focused ]; then
				outdesks=$(echo "$outdesks%{R} [ ] %{R}")
			else
				outdesks=$(echo "$outdesks [ ] ")
			fi
		fi
	done

	echo $outdesks
}

Network() {
	state=$(cat /sys/class/net/enp0s31f6/operstate)
	if [ $state = "up" ]; then
		echo "inet %{F#b5bd68}$state%{F-}"
	else
		echo "inet %{F#cc6666}$state%{F-}"
	fi
}

Clock() {
	echo "$(date '+%H:%M')"
}

while true; do
	echo "%{l}%{O14}$(Clock) %{c}$(Workspaces) %{r}$(Network)%{O14}"
	sleep 1
done
