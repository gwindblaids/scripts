#!/bin/bash


# -----------------------------------------------------------------------------

echo "install packages from official repository..." 
pacman -S python-pip git wget vim chromium firefox thunderbird gnome-disk-utility latte-dock bleachbit flameshot htop gimp kdenlive tmux telegram-desktop transmission-gtk vlc zeal yakuake obs-studio gwenview okular libreoffice audacity ark nvidia nvidia-settings dolphin ripgrep

# -----------------------------------------------------------------------------

echo "install packages from aur..."

# skype
git clone https://aur.archlinux.org/skypeforlinux-preview-bin.git
cd skypeforlinux-preview-bin && makepkg -sri
cd .. && rm -rf skypeforlinux-preview-bin

# dropbox
echo "install dropbox"
git clone https://aur.archlinux.org/dropbox.git
cd dropbox && makepkg -sri
cd .. && rm -rf dropbox

# nixnote2
echo "install nixnote2"
git clone https://aur.archlinux.org/nixnote2-git.git
cd nixnote2-git && makepkg -sri
cd .. && rm -rf nixnote2-git

# vscode
echo "install vscode..."
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin && makepkg -sri
cd .. && rm -rf visual-studio-code-bin

# crow_translate
echo "install crow translate..."
git clone https://aur.archlinux.org/crow-translate-git.git 
cd crow-translate-git && makepkg -sri
cd .. && rm -rf crow-translate-git 


# -----------------------------------------------------------------------------

echo "install calibre"
wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

# -----------------------------------------------------------------------------

echo "install venv tools"
pip install virtualenv virtualenvwrapper

# -----------------------------------------------------------------------------

echo "push specific settings into bashrc"

echo "alias la='ls -la --color=auto'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/hdd/projects
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source /usr/bin/virtualenvwrapper.sh" >> $HOME/.bashrc

# -----------------------------------------------------------------------------

echo "setting vim"

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
echo "syntax on
imap <F5>:w<CR>:!clear;python3 %<CR>
filetype plugin indent on               

set rtp+=~/vimfiles/bundle/vundle/
set nu
set cindent
set hls

call vundle#rc()

Bundle 'gmarik/vundle'     
Bundle 'scrooloose/nerdtree'

filetype plugin indent on 
autocmd FileType python setlocal foldmethod=indent smartindent shiftwidth=4 ts=4 et cinwords=if,elif,else,for,while,try,except,finally,def,class" > $HOME/.vimrc

# -----------------------------------------------------------------------------

echo "install jetbrains toolbox..."
wget --output-document=$HOME/Documents/jetbrains-toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.16.6319.tar.gz
tar -xvf $HOME/Documents/jetbrains-toolbox.tar.gz -C $HOME/Documents/
rm -rf $HOME/Documents/jetbrains-toolbox.tar.gz

# -----------------------------------------------------------------------------

echo "install kite..."
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

# -----------------------------------------------------------------------------
