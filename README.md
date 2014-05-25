Installation
============

    git clone git://github.com/achilleas-k/vimconfig ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init --recursive

Updating plugins
================

    cd ~/.vim
    git submodule foreach git pull origin <branch>


