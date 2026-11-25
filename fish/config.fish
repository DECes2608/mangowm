if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

export EDITOR=nvim

alias yedek 'cd ~/.config && cp -r mango waybar rofi mako drift nvim gammastep fastfetch fish ~/mangowm/ && cd ~/mangowm && git add . && git commit -m "new changes" && git push && cd -'

alias doff "sudo docker stop mssql && sudo systemctl stop docker.service docker.socket"
alias don "sudo systemctl start docker && docker start mssql"
alias dw "sudo pacman -S"
alias del "sudo pacman -Rns"
alias deld "sudo pacman -Rdd"
alias up "yay -Syu"

fish_add_path /home/deces/.spicetify
