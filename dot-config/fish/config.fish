if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias pac="sudo pacman"
alias vim="nvim"
alias wlogout="wlogout --buttons-per-row 2"
alias cuvpn="netbird up --management-url https://vpn.labs.centraluniversity.ru:33073"
alias ls='eza --color=always --long --git --icons=always'
alias ssh='kitty +kitten ssh'
alias mambavpn='nmcli connection up mambavpn'
alias gpu2hw='kitty +kitten ssh ekuznetsov@gpu2.hw.lan'
alias gpu4hw='kitty +kitten ssh ekuznetsov@gpu4.hw.lan'


starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ek/miniconda3/bin/conda
    eval /home/ek/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/ek/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/ek/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/ek/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

# Set up fzf key bindings
fzf --fish | source
