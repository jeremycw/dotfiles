set termguicolors
syntax on

set nocompatible               " be iMproved
filetype off                   " required!

set background=dark

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-markdown'
Plug 'kien/ctrlp.vim'
Plug 'icymind/NeoSolarized'
Plug 'rking/ag.vim'

call plug#end()

filetype plugin indent on     " required! 

set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

colorscheme NeoSolarized
set expandtab
set ts=2 sts=2 sw=2
set cc=80
set hidden
set number
set ruler
set autoread
let mapleader = "\<Space>"

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.bundle/*,*.ogg,*.png,*.jpg,*.mp3,.deps/*
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard | egrep -v "(\\.png|\\.ogg|\\.mp3|\\.jpg|\\.coffee\\.html|\\.meta|\\.class|\\.prefab|\\.scene|\\.controller|\\.animation|\\.shader|\\.unity|\\.anim|\\.wav|\\.mat|\\.dll|\\.asset|Assets/Facebook|Assets/Plugins)"', 'find %s -type f']
let g:ctrlp_use_caching = 0

" Copy current buffer path relative to root of VIM session to system clipboard
nnoremap <Leader>yp :let @*=expand("%")<cr>:echo "Copied file path to clipboard"<cr>
" Copy current filename to system clipboard
nnoremap <Leader>yf :let @*=expand("%:t")<cr>:echo "Copied file name to clipboard"<cr>
" Copy current buffer path without filename to system clipboard
nnoremap <Leader>yd :let @*=expand("%:h")<cr>:echo "Copied file directory to clipboard"<cr>

nnoremap <Leader>t :CtrlP<CR>

nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h <C-W>h
nnoremap <Leader>l <C-W>l
nnoremap <Leader>j <C-W>j
nnoremap <Leader>k <C-W>k
nnoremap <Leader>e :Ex<CR>

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>

vnoremap <Leader>r :SendSelectionToTmux<CR>

nnoremap k gk
nnoremap j gj

set rtp+=/Users/jeremy/.opam/system/share/ocamlmerlin/vim
