# Pre Install


    git clone https://github.com/deadc/dotfiles.git .dot
    cd .dot && sudo aurman --needed --noconfirm -S $( cat requirements.txt )

# Config Install

    cd .dot && stow bspwm compton gtk polybar sxhkd termite zsh
