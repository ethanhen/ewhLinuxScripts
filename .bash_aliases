# useful aliases
# ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

# maintenace
alias update='sudo apt update && sudo apt upgrade'
alias clean='sudo apt clean; sudo apt autoremove'

# day to day
alias cls='clear'
alias redo='sudo $(history -p !!)'
alias diskuse='sudo ncdu --exclude=/plexmedia --exclude=/storage /'
alias passgen='dd if=/dev/urandom of=/dev/stdout bs=1 count=32 | base64'
function whichgroup() { getent group $1 | awk -F: '{print $4}' |  tr "," " "; }
function addusertogroup { sudo usermod -a -G $2 $1; } 
alias editbash='vim ~/.bashrc && . ~/.bashrc'
alias editvim='vim ~/.vimrc'
alias editalias='vim ~/.bash_aliases && . ~/.bash_aliases'

# fail2ban/ip bans
function banip() { sudo ufw insert 1 deny from $1 to any; }
alias ipbans='sudo iptables -S | grep f2b'
alias ssi="zgrep -h \"Ban \" /var/log/fail2ban.log* | awk '{print \$NF}' | awk -F\. '{print \$1\".\"\$2\".\"}' | sort | uniq -c  | sort -n | tail"

# system specific
# commands for things connected to NAS
alias NASDOWN='sudo systemctl stop plexmediaserver.service'
alias NASUP='sudo systemctl start plexmediaserver.service'

# wifi enabled machines
#alias wifion='sudo nmcli radio wifi on'
#alias wifioff='sudo nmcli radio wifi off'

# nginx proxies
#alias editproxies='sudo vim /etc/nginx/sites-available/subdomains'

# docker
alias dcbuild='docker compose build'
alias dcup='docker compose up --remove-orphans'
alias dcdown='docker compose down'
alias dcrestart='docker compose down && docker compose up --remove-orphans -d'
alias dcpull='docker compose pull'
alias dockps='docker ps --format "{{.ID}} {{.Names}}"'
alias dclog='docker compose logs --follow'
function dockbash() { docker exec -it $1 /bin/bash; }
function docksh() { docker exec -it $1 /bin/sh; }

# d-fi 
alias dfi='d-fi -q flac -c 8 -d -i'

# yt-dlp
function dl-archive() { yt-dlp $1 -o '%(extractor)s %(id)s' --get-filename > archive.txt; } # DO NOT USE 
function dl() { yt-dlp --verbose --ffmpeg-location /srv/ffmpeg-master-latest-linux64-gpl/bin/ffmpeg --restrict-filenames --download-archive archive.txt --cookies $(pwd)/cookies.txt --concurrent-fragments 20 --format "bestvideo+bestaudio/best" --merge-output-format mkv -o '%(upload_date)s-%(title)s-%(id)s.%(ext)s' $1; }
function dlq() { yt-dlp --ffmpeg-location /srv/ffmpeg-master-latest-linux64-gpl/bin/ffmpeg --restrict-filenames --download-archive archive.txt --cookies $(pwd)/cookies.txt --concurrent-fragments 20 --format "bestvideo+bestaudio/best" --merge-output-format mkv -o '%(upload_date)s-%(title)s-%(id)s.%(ext)s' $1; }

# old yt-dlp stuff for reference
#alias dl='yt-dlp --verbose --ffmpeg-location /srv/ffmpeg-master-latest-linux64-gpl/bin/ffmpeg --restrict-filenames --download-archive archive.txt --cookies cookies.txt --concurrent-fragments 20 --format "bestvideo+bestaudio/best" --merge-output-format mkv -o '\''%(upload_date)s-%(title)s-%(id)s.%(ext)s'\'''\
#alias dlq='yt-dlp --ffmpeg-location /srv/ffmpeg-master-latest-linux64-gpl/bin/ffmpeg --restrict-filenames --download-archive archive.txt --cookies cookies.txt --concurrent-fragments 20 --format "bestvideo+bestaudio/best" --merge-output-format mkv -o '\''%(upload_date)s-%(title)s-%(id)s.%(ext)s'\'''\
