#!/bin/sh

VIMRC=~/.vimrc
VIMDIR=~/.vim
AUTOLOAD="$VIMDIR/autoload"
BUNDLE="$VIMDIR/bundle"
COLORS="$VIMDIR/colors"
FTPLUGIN="$VIMDIR/ftplugin"

if [ -e $VIMDIR ]
then
    cp -pr $VIMDIR $VIMDIR".bak_$(date +'%s')"
fi

if [ -e $VIMRC ]
then
    cp -pr $VIMRC $VIMRC".bak_$(date +'%s')"
fi

rm -rf $VIMDIR
rm -rf $VIMRC

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

# Install nerdtree.
git clone https://github.com/scrooloose/nerdtree.git $BUNDLE/nerdtree

# Install vim-ansible-yaml.
git clone https://github.com/chase/vim-ansible-yaml.git $BUNDLE/vim-ansible-yaml

# Install python-folding
wget -qO $FTPLUGIN/python_folding.vim http://www.vim.org/scripts/download_script.php?src_id=5492
