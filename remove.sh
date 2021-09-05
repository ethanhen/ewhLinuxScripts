#!/bin/bash

#reboot script for running the wal command

#set wal theme for terminal
wal --theme base16-nord

#remove executable from rc.local
chmod -x /etc/rc.local
sed -i '$ d' /etc/rc.local

#clean up
rm graphicsfix.sh
rm zathura-color.sh
rm quickstart.sh
rm -- "$0"