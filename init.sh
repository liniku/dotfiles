#!/bin/sh

DOTFILES_DIR=$(cd $(dirname $0) && pwd)
ln -sf ${DOTFILES_DIR}/.vimrc ~/.vimrc
if [ ! -L ~/.vim ]; then
	rm -rf ~/.vim
fi
ln -snf ${DOTFILES_DIR}/.vim/ ~/.vim
