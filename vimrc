" this is vim, not vi 
set nocompatible

" vundle setup
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""" plugins after here
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
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
set whichwrap+=<,>,h,l

" dont always go to start of line
set nostartofline

" show cursor position
"set ruler

" color scheme
colorscheme monokai

" always show status line
set laststatus=2

" ask if you wish to save, instead of failing a command because of unsaved changes
set confirm

" disable error sounds
set noerrorbells
set visualbell
set t_vb=
set tm=500

" enable mouse WHY??
"set mouse=a 


" line numbers, tabs, indentation and line breaks
set number
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set wrap " wrap lines
set lbr
set tw=500 " linebreak on 500 chars

" vim-airline stuff
let g:airline_powerline_fonts = 1
set noshowmode " hide mode indicator, this is shown in airline

" vim-cpp-enhanced-highlight stuff
let g:cpp_class_scope_highlight = 1

" nerdtree stuff
"autocmd vimenter * NERDTree

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
