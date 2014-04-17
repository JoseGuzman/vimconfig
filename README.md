Installation
============

    git clone git://github.com/achilleas-k/vimconfig ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Updating plugins
================

    cd ~/.vim
    git submodule foreach git pull


