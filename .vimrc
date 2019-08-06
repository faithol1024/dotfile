set nocompatible " be iMproved, required

filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 Plugin ‘tpope/vim-fugitive’
 " Will add more here later
 
call vundle#end() " required
filetype plugin indent on
