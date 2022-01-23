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
alias redo='sudo $(history -p !!)'

alias dcbuild='docker-compose build'
alias dcup='docker-compose up --remove orphans'
alias dcdown='docker-compose down'
alias dockps='docker ps --format "{{.ID}} {{.Names}}"'

alias dfi='d-fi -q flac -c 8 -d -i'

alias dl='yt-dlp --verbose --restrict-filenames --cookies cookies.txt --format "bestvideo+bestaudio[ext=m4a]/bestvid    eo+bestaudio/best" --merge-output-format mkv -o '\''%(ti    tle)s-%(id)s.%(ext)s'\'''\