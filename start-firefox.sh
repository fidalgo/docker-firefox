#!/bin/bash
# groupmod -g $gid firefox
# usermod -u $uid -g $gid firefox
env
if [ -d /home/firefox/.mozilla ]; then
  chown -R firefox:firefox /home/firefox/.mozilla
fi

exec su -ls "/bin/bash" -c "/usr/bin/firefox-esr -profile /home/firefox/.mozilla/firefox $ARGS $URL" firefox
