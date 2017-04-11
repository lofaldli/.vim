set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/indentpython.vim'
Plug 'yonchu/accelerated-smooth-scroll'

call plug#end()

syntax on
filetype plugin indent on

set number
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set wrap
set lbr
set tw=500

set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set nostartofline
set laststatus=2
set confirm

let mapleader=' '
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>d :bd<CR>
map <leader>n :bn<CR>
map <leader>p :bp<CR>
map <leader>h :nohlsearch<CR>
map <leader>j ddp
map <leader>k ddkP

map j gj
map k gk

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

set t_Co=256

" improved file browsing with :e
set path+=**
set wildmenu
let g:netrw_banner=0       " disable banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1         " open splits to the right
let g:netrw_liststyle=3    " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" borrowed from tomorrow night eighties
hi Constant   ctermfg=209 guifg=#f99157
hi Comment    ctermfg=246 guifg=#999999
hi Function   ctermfg=68  guifg=#6699cc
hi Identifier ctermfg=210 guifg=#f2777a
hi Keyword    ctermfg=209 guifg=#f99157
hi LineNr     ctermfg=238 guifg=#515151
hi Normal     ctermfg=251 guifg=#cccccc
hi Operator   ctermfg=80  guifg=#66cccc
hi PreProc    ctermfg=176 guifg=#cc99cc
hi Statement  ctermfg=251 guifg=#cccccc
hi StatusLine ctermfg=59  guifg=#4d5057 ctermbg=251 guibg=#cccccc cterm=reverse
hi Special    ctermfg=251 guifg=#cccccc
hi String     ctermfg=114 guifg=#99cc99
hi Type       ctermfg=68  guifg=#6699cc 

hi vimCommand ctermfg=210 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE

" plugin settings
let g:gitgutter_sign_column_always=1
let g:buftabline_indicators=1
let g:lightline = {
            \   'colorscheme': 'seoul256',
            \   'active': {
            \     'left': [ ['mode'], ['filename', 'modified'] ],
            \   }
            \ }
