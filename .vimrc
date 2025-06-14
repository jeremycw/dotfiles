syntax on

set nocompatible               " be iMproved

"set background=dark

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-markdown'
Plug 'maxmx03/solarized.nvim'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'

au BufReadPost *.jbuilder set syntax=ruby

call plug#end()

let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

colorscheme solarized
set expandtab
set ts=2 sts=2 sw=2
set cc=80
set hidden
set number
set ruler
set autoread
let mapleader = "\<Space>"

let g:LanguageClient_serverCommands = {
    \ 'c': ['ccls']
    \ }

" Copy current buffer path relative to root of VIM session to system clipboard
nnoremap <Leader>yp :let @*=expand("%")<cr>:echo "Copied file path to clipboard"<cr>

nnoremap <Leader>t :Files<CR>

nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h <C-W>h
nnoremap <Leader>l <C-W>l
nnoremap <Leader>j <C-W>j
nnoremap <Leader>k <C-W>k
nnoremap <Leader>e :Ex<CR>

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>

nnoremap k gk
nnoremap j gj
