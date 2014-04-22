set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'jnwhiteh/vim-golang'

syntax on
colorscheme Monokai

set autoindent shiftround tabstop=2 shiftwidth=2

filetype plugin indent on     " required
