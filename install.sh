#!/bin/sh

VIMDIR=~/.vim
AUTOLOAD="$VIMDIR/autoload"
BUNDLE="$VIMDIR/bundle"
COLORS="$VIMDIR/colors"
FTPLUGIN="$VIMDIR/ftplugin"

# Prepare directories for plugins.
mkdir -p $AUTOLOAD $BUNDLE $COLORS $FTPLUGIN

# Install .vimrc.
wget -qO ~/.vimrc https://raw.githubusercontent.com/korzeniewskipl/vimcharm/master/.vimrc

# Install pathogen.
wget -qO $AUTOLOAD/pathogen.vim https://tpo.pe/pathogen.vim

# Install color scheme.
wget -qO $COLORS/wombat256mod.vim https://raw.githubusercontent.com/korzeniewskipl/vimcharm/master/.vim/colors/wombat256mod.vim

# Install powerline.
git clone https://github.com/Lokaltog/powerline.git $BUNDLE/powerline

# Install ctrlp.vim.
git clone https://github.com/kien/ctrlp.vim.git $BUNDLE/ctrlp.vim

# Install ack.
sudo apt-get install -y ack-grep
git clone https://github.com/mileszs/ack.vim.git $BUNDLE/ack.vim

# Install nerdcommenter.
git clone https://github.com/scrooloose/nerdcommenter.git $BUNDLE/nerdcommenter
