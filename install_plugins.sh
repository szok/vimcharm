#!/bin/sh

VIMDIR=~/.vim
AUTOLOAD="$VIMDIR/autoload"
BUNDLE="$VIMDIR/bundle"
FTPLUGIN="$VIMDIR/ftplugin"

# Prepare directories for plugins.
mkdir -p $AUTOLOAD $BUNDLE $FTPLUGIN

# Install pathogen.
wget -qO $AUTOLOAD/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

# Install powerline.
git clone https://github.com/Lokaltog/powerline.git $BUNDLE/powerline

# Install ctrlp.vim.
git clone https://github.com/kien/ctrlp.vim.git $BUNDLE/ctrlp.vim

# Install python-mode.
git clone https://github.com/klen/python-mode.git $BUNDLE/python-mode

# Install nerdtree.
git clone https://github.com/scrooloose/nerdtree.git $BUNDLE/nerdtree

# Install nerdcommenter.
git clone https://github.com/scrooloose/nerdcommenter.git $BUNDLE/nerdcommenter

# Install ack.
sudo apt-get install -y ack-grep
git clone https://github.com/mileszs/ack.vim.git $BUNDLE/ack.vim

# Install Taglist.
sudo apt-get install -y exuberant-ctags
mkdir -p $BUNDLE/taglist
wget -qO $BUNDLE/taglist/taglist.zip http://vim.sourceforge.net/scripts/download_script.php?src_id=19574
unzip -d $BUNDLE/taglist $BUNDLE/taglist/taglist.zip
rm $BUNDLE/taglist/taglist.zip

# Install Tasklist.
mkdir -p $BUNDLE/tasklist/plugin
wget -qO $BUNDLE/tasklist/plugin/tasklist.vim http://www.vim.org/scripts/download_script.php?src_id=10388

# Install Python folding.
wget -qO $FTPLUGIN/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
