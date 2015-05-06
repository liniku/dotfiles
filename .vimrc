syntax on
set title
set ruler
set hlsearch
set showmatch
set showmode
set clipboard=unnamed

"文字コード
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp
"改行コード
set fileformats=unix,dos,mac
"全角記号幅
set ambiwidth=double

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'hynek/vim-python-pep8-indent'

call neobundle#end()

filetype on
filetype plugin on
filetype plugin indent on

NeoBundleCheck
