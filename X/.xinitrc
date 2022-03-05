# X server initialization

# Disable home directory core dumps
ulimit -Sc 0

# Set global dpi
xrandr --dpi 192

# Sound
pipewire &
pipewire-pulse &
pipewire-media-session &

# Set keyboard layout
setxkbmap -layout us -Option compose:ralt
doas /home/moritz/.local/bin/kmonad /home/moritz/.macbook.kbd &

# Start hotkey daemon
sxhkd &

# Set background image
[ -f ~/.config/X/bg.jpg ] && feh --bg-fill ~/.config/X/bg.jpg && xsetroot -solid "#282828"

# Start bar script
[ -x ~/.config/X/bar ] && ~/.config/X/bar &

# Start window manager
exec dwm
