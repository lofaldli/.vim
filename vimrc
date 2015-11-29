" this is vim, not vi 
set nocompatible

" vundle setup
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""" plugins after here
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
""" plugins before here

call vundle#end()

" keep cursor on middle line
set scrolloff=10000

" determine file type based on its name or possibly its contents
filetype indent plugin on

" enable syntax highlighting
syntax on

" dont complain when closing without saving etc.
set hidden

" better autocompletion
set wildmenu

" show partial commands
set showcmd

" highlight search results
set hlsearch

" case insensitive search, except when searching for uppercase
set ignorecase
set smartcase

" allow backspacing over indents, line breaks and start of insert action
set backspace=indent,eol,start

" keep indentation when starting a new line
set autoindent

" dont always go to start of line
set nostartofline

" show cursor position
set ruler

" color scheme
colorscheme monokai

" always show status line
set laststatus=2

" ask if you wish to save, instead of failing a command because of unsaved changes
set confirm

" use visual bell instead of beeping
set visualbell

" if visualbell is set vim will neither flash nor beep
set t_vb=

" enable mouse
"set mouse=a

" dont show mode in command line
set noshowmode

" show line numbers
set number

" tabs = 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab
let g:airline_powerline_fonts = 1
