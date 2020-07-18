setxkbmap de &
sxhkd &
dunst &
spotifyd &
amixer sset IEC958 on
xsetroot -cursor_name left_ptr
~/.fehbg &
~/.config/bspwm/bspwmrc &
picom -b &
$TERMINAL --class spotify,spotify --title "Spotify Client" -d 120 36 -e zsh &
$TERMINAL --class dropdown,dropdown --title "Scratchpad Terminal" -d 120 36 -e zsh &
exec bspwm
