#!/bin/sh

VIMDIR=~/.vim
AUTOLOAD="$VIMDIR/autoload"
BUNDLE="$VIMDIR/bundle"
FTPLUGIN="$VIMDIR/ftplugin"

# Prepare directories for plugins.
mkdir -p $AUTOLOAD $BUNDLE $FTPLUGIN

# Install pathogen.
wget -qO $AUTOLOAD/pathogen.vim https://tpo.pe/pathogen.vim

# Install powerline.
git clone https://github.com/Lokaltog/powerline.git $BUNDLE/powerline

# Install ctrlp.vim.
git clone https://github.com/kien/ctrlp.vim.git $BUNDLE/ctrlp.vim
