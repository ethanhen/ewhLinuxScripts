#!/usr/bin/bash
now=$(date +"%T %m-%d-%y")
ls -R /plexmedia/movies > /home/user/filelists/movies.txt
ls -R /plexmedia/tv > /home/user/filelists/tv.txt
chmod -R 777 /plexmedia
chown -R plex /plexmedia
chgrp -R plex /plexmedia
echo "filelists created [$now]"
