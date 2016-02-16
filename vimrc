" this is vim, not vi
set nocompatible

" vundle setup
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'vim-pandoc/vim-pandoc'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

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

" enable mouse 
"set mouse=a NO!

" disable backups and swapfiles
set nobackup
set nowb
set noswapfile


" line numbers, tabs, indentation and line breaks
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

set noshowmode

" plugin settings stuff
let g:cpp_class_scope_highlight = 1
"autocmd vimenter * NERDTree
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:lightline = {
            \'colorscheme': 'wombat',
            \'active' : {
            \   'left': [ ['mode', 'paste'],
            \             ['fugitive', 'bufferline']]
            \},
            \'component' : {
            \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
            \},
            \'component_visible_condition' : {
            \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
            \},
            \'component_function': {
            \   'bufferline' : 'Bufline',
            \}
            \}

let g:bufferline_echo = 0
let g:bufferline_modified = '+'
function! Bufline()
    let st=g:bufferline#refresh_status()
    return g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after
endfunction

" delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.cc :call DeleteTrailingWS()
autocmd BufWrite *.c :call DeleteTrailingWS()
autocmd BufWrite *.h :call DeleteTrailingWS()

" don't close window, when deleting a buffer
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
"
" return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" remember info about open buffers on close
set viminfo^=%

" shorthand commands
let mapleader=","
map <leader>w :w<CR>
map <leader><tab> :bn<CR>
map <leader><s-tab> :bp<CR>
map <leader>q :q<CR>

" easy searching
map <space> /
map <c-space> ?
map <leader><space> :nohlsearch<CR>

" move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
