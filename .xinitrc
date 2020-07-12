setxkbmap de &
sxhkd &
dunst &
spotifyd &
amixer sset IEC958 on
xsetroot -cursor_name left_ptr
~/.fehbg &
~/.config/bspwm/bspwmrc &
picom -b --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil --corner-radius 6 &
st -c spotify -t "Spotify Client" -g 120x36 -e zsh &
st -c dropdown -t "Scratchpad Terminal" -g 120x36 -e zsh &
exec bspwm
