#!/bin/sh

Workspaces() {
	indesks=$(bspc query -D --names)
	focused=$(bspc query -D --names -d focused)
	i=1

	for desktop in $indesks; do
		desktop=$(echo "$desktop")
		nodes=$(bspc query -N -d $desktop)

		if [ ! -z "$nodes" ]; then
			if [ $desktop = $focused ]; then
				outdesks=$(echo "$outdesks%{A:bspc desktop -f $desktop:}%{R} [x] %{R}%{A}")
			else
				outdesks=$(echo "$outdesks%{A:bspc desktop -f $desktop:} [x] %{A}")
			fi
		else
			if [ $desktop = $focused ]; then
				outdesks=$(echo "$outdesks%{A:bspc desktop -f $desktop:}%{R} [ ] %{R}%{A}")
			else
				outdesks=$(echo "$outdesks%{A:bspc desktop -f $desktop:} [ ] %{A}")
			fi
		fi
		i=$i+1
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
	echo "%{l}%{O14}$(Clock) %{c}%{A4:bspc desktop -f prev.local:}%{A5:bspc desktop -f next.local:}$(Workspaces)%{A}%{A} %{r}$(Network)%{O14}"
	sleep 1
done
