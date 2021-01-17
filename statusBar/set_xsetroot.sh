#!/bin/sh

# Change the charachter(s) used to seperate modules. If two are used, they will be placed at the start and end.
export SEP1="["
export SEP2="]"

# Import the modules
. "`dirname "${0}"`/bar-functions/dwm_battery.sh"
. "`dirname "${0}"`/bar-functions/dwm_alsa.sh"

# . "$DIR/bar-functions/dwm_countdown.sh"
# . "$DIR/bar-functions/dwm_alarm.sh"
# . "$DIR/bar-functions/dwm_transmission.sh"
# . "$DIR/bar-functions/dwm_cmus.sh"
# . "$DIR/bar-functions/dwm_mpc.sh"
# . "$DIR/bar-functions/dwm_spotify.sh"
# . "$DIR/bar-functions/dwm_resources.sh"
# . "$DIR/bar-functions/dwm_mail.sh"
# . "$DIR/bar-functions/dwm_backlight.sh"
# . "$DIR/bar-functions/dwm_weather.sh"
# . "$DIR/bar-functions/dwm_vpn.sh"
# . "$DIR/bar-functions/dwm_networkmanager.sh"
# . "$DIR/bar-functions/dwm_keyboard.sh"
# . "$DIR/bar-functions/dwm_ccurse.sh"
# . "$DIR/bar-functions/dwm_date.sh"
# . "$DIR/bar-functions/dwm_connman.sh"
# . "$DIR/bar-functions/dwm_loadavg.sh"
# . "$DIR/bar-functions/dwm_currency.sh"

# Append results of each func one by one to a string
dispstr=""
dispstr="$dispstr$(dwm_battery)"

dispstr="$dispstr$(dwm_alsa)"

# dispstr="$dispstr$(dwm_connman)"
# dispstr="$dispstr$(dwm_pulse)"
# dispstr="$dispstr$(dwm_countdown)"
# dispstr="$dispstr$(dwm_alarm)"
# dispstr="$dispstr$(dwm_transmission)"
# dispstr="$dispstr$(dwm_cmus)"
# dispstr="$dispstr$(dwm_mpc)"
# dispstr="$dispstr$(dwm_spotify)"
# dispstr="$dispstr$(dwm_resources)"
# dispstr="$dispstr$(dwm_mail)"
# dispstr="$dispstr$(dwm_backlight)"
# dispstr="$dispstr$(dwm_weather)"
# dispstr="$dispstr$(dwm_vpn)"
# dispstr="$dispstr$(dwm_networkmanager)"
# dispstr="$dispstr$(dwm_keyboard)"
# dispstr="$dispstr$(dwm_ccurse)"
# dispstr="$dispstr$(dwm_date)"
# dispstr="$dispstr$(dwm_loadavg)"
# dispstr="$dispstr$(dwm_currency)"

xsetroot -name "$dispstr"
