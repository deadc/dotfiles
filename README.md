
![screenshot](screenshot.png)


# Install yay

    wget -O /tmp/yay-git.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/yay-git.tar.gz && \
    tar zxvf /tmp/yay-git.tar.gz -C /tmp && \
    cd /tmp/yay-git && \
    makepkg -si

# Install

    git clone https://github.com/deadc/dotfiles.git .dot
    cd .dot && sudo yay --needed --noconfirm -S $( cat requirements.txt )

# Config Install

    cd .dot && stow bspwm compton gtk polybar sxhkd termite zsh vim rofi scripts extras
