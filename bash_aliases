# ~/.bash_aliases

# some lovely ls aliases
alias ls='ls --color=auto'
alias ll='ls -alFh'
alias la='ls -A'
#alias l='ls -CF'

alias ..='cd ..'
alias dh='df -h --type=ext3'
alias duh='du -h'
#alias pacs='pacman -Sps'
alias mounta='sudo mount -a'
alias vim='vim -p'
alias f3h='feh --action1 ";image-metadata.sh edit-comment %f" --action2 ";image-metadata.sh edit-tags %f" --info "image-metadata.sh show %f"'
alias vlcnp='vlc -ZL -I ncurses --no-playlist-autostart --no-media-library'
alias diffdiff='diff -y --suppress-common-lines'

# Keyboard layout switches
alias asdf='setxkbmap "se_c" -variant colemak'
alias arst='setxkbmap -layout "se"'

# Pipe latest arch news to terminal before upgrading system
alias pac-upgrade='pac_news.rb && sudo pacman -Suy'

# Better name for wine+spotify
alias spotify-wine='wine ~/.wine/drive_c/Program/Spotify/spotify.exe'

# Kalpana shortcut
alias kal-git='python ~/Programs/Kalpana/kalpana.py3'
