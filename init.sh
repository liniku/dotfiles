#!/bin/sh

DOTFILES_DIR=$(cd $(dirname $0) && pwd)
ln -sf ${DOTFILES_DIR}/.vimrc ~/.vimrc
ln -sf ${DOTFILES_DIR}/.vim ~/.vim
