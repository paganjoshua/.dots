# Locker
light-locker --lock-after-screensaver=1 &

# Display Resolution
xrandr --output DP-2 --primary --auto --right-of DP-3

# Screen Save 1hr; Disable DPMS
xset s 3600 3600 -dpms

# Compositor
picom --config $XDG_CONFIG_HOME/picom/picom.conf -f &

# Hotkeys
sxhkd &

# Wallpaper
nitrogen --restore &

# Applets
nm-applet &
volctl &
#pasystray & # too much info, not enough convenience
#pa-applet & # stopped working, ugly

# Date
dte() {
  dte="$(date +"%a %b %d %l:%M%P")"
  echo -e "$dte"
}

# Storage
storage() {
  storage="$(df -Th | sed -n '/mapper/s/.*\(root\|home\|var\).*\([ 0-9]\{2\}%\).*/⟨ \1 \2 ⟩/p' | \
  while read part; do
    if [[ $part =~ 'home' ]]; then
      echo -n "─$part─"
    else
      echo -n "$part"
    fi
    #echo -n "⟨ $part ⟩─"
  done)"
  echo -e "$storage"
  #echo -e "─$storage"
}

# Memory
mem() {
  mem="$(free -h | sed -n '/Mem/s/\s\+/ /gp' | cut -d ' ' -f 7)"
  echo -e "Mem: $mem"
}

  s_h_l="─⟨⟩"
  s_v_l="│"
  s_l_c_u="┌"
  s_r_c_u="┐"
  s_l_c_d="└"
  s_r_c_d="┘"
  s_t_l="├"
  s_t_r="┤"
while true; do
  xsetroot -name " └⟨ $(mem) ⟩┘  └$(storage)┘  └⟨ $(dte) ⟩┘"
  sleep 1
done &

# Exec dwm
# restart if dwm exits 0 -- this allows reloading config.h
# end entirely with 'pkill dwm'
while true; do
  dwm 2> $HOME/quarterdeck/pacports/suckless/dwm/dwm.log \
  && continue \
  || break
done



