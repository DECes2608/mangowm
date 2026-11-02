if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

alias dw "sudo pacman -S"
alias del "sudo pacman -Rns"
alias deld "sudo pacman -Rdd"
alias up "yay -Syu"

fish_add_path /home/deces/.spicetify
