syntax on

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'ervandew/supertab'
Bundle 'jeremycw/darkspectrum'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 

set expandtab
set ts=2 sts=2 sw=2
set hidden
set number
let mapleader = ","
color darkspectrum
