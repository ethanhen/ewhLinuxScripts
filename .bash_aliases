# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

# ethan aliases
alias update='sudo apt-get update && sudo apt-get upgrade'
alias clean='sudo apt-get clean; sudo apt-get autoremove'
alias cls='clear'
alias editbash='vim ~/.bashrc && . ~/.bashrc'
alias editvim='vim ~/.vimrc'
alias editalias='vim ~/.bash_aliases && . ~/.bash_aliases'
alias redo='sudo $(history -p !!)'
alias wifion='sudo nmcli radio wifi on'
alias wifioff='sudo nmcli radio wifi off'
alias scrape='cd /home/user/scraper && poetry run python ./start_ofd.py ; cd -'

alias dcbuild='docker-compose build'
alias dcup='docker-compose up --remove-orphans'
alias dcdown='docker-compose down'
alias dockps='docker ps --format "{{.ID}} {{.Names}}"'
function docksh() { docker exec -it $1 /bin/bash; }

alias dfi='d-fi -q flac -c 8 -d -i'

dl-archive () { yt-dlp $1 -o '%(extractor)s %(id)s' --get-filename > archive.txt; }
alias dl='yt-dlp --verbose --restrict-filenames --download-archive archive.txt --cookies cookies.txt --concurrent-fragments 8 --format "bestvideo+bestaudio[ext=m4a]/bestvideo+bestaudio/best" --merge-output-format mkv -o '\''%(upload_date)s-%(title)s-%(id)s.%(ext)s'\'''\
