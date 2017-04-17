set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neocomplete.vim'
Plug 'Townk/vim-autoclose'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
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
set cursorline

let mapleader=' '
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
let base16colorspace=256

" improved file browsing with :e
set path+=**
set wildmenu
let g:netrw_banner=0       " disable banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1         " open splits to the right
let g:netrw_liststyle=3    " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" plugin settings

let g:gitgutter_sign_column_always=1

let g:buftabline_indicators=1

let g:lightline = {
            \   'colorscheme': 'seoul256',
            \   'active': {
            \     'left': [ ['mode'], ['filename', 'modified'] ],
            \   }
            \ }

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1

"let g:acp_enableAtStartup=0
"let g:neocomplete#enable_at_startup=1
"let g:neocomplete#enable_smart_case=1
"let g:neocomplete#sources#syntax#min_keyword_length=3
