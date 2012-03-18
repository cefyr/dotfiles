# ~/.bash_aliases

# some lovely ls aliases
alias ls='ls --color=auto'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

alias dh='df -h --type=ext3'
alias pacS='sudo pacman -S'
alias pacs='pacman -Sps'
alias mounta='sudo mount -a'
alias vim='vim -p'
alias f3h='feh --action1 ";image-metadata.sh edit-comment %f" --action2 ";image-metadata.sh edit-tags %f" --info "image-metadata.sh show %f"'
alias vlcnp='vlc -ZL -I ncurses --no-playlist-autostart --no-media-library'

# Keyboard layout switches
alias asdf='setxkbmap "se_c" -variant colemak'
alias arst='setxkbmap -layout "se"'
