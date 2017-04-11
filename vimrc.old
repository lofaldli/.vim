" vim: fdm=marker foldenable sw=4 ts=4 sts=4
"  

" {{{ PLUGINS

set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'

Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_column_always=1
Plugin 'ap/vim-buftabline'
let g:buftabline_indicators=1
Plugin 'itchyny/lightline.vim'
let g:lightline = {
    \ 'colorscheme' : 'wombat',
    \ 'active': {
    \   'left': [ ['mode'],
    \             ['fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&readonly?"r":""}',
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
    \ },
    \ 'component_visible_condition': {
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    \ },
    \ }
Plugin 'flazz/vim-colorschemes'

Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'  
"Plugin 'kien/ctrlp.vim'
"Plugin 'sukima/xmledit'
Plugin 'ervandew/supertab'
Plugin 'sheerun/vim-polyglot'
Plugin 'jpalardy/vim-slime'

call vundle#end()


" }}}
" {{{ SYNTAX HIGHLIGHTING

filetype plugin indent on
syntax on
set t_Co=256
colorscheme Tomorrow-Night-Eighties
"colorscheme C64

" }}}
" {{{ HOTKEYS

let mapleader=","
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>d :bd<CR>
map <leader><tab> :bn<CR>
map <leader><s-tab> :bp<CR>

map j gj
map k gk

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" }}}
" {{{ LINE NUMBERS, TABS, INDENTATION AND LINE BREAKS

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

" }}}
" {{{ MISC

set noshowmode
set hidden
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set nostartofline
set laststatus=2
set confirm
set scrolloff=10000

" }}}
" {{{ DELETE TRAILING WHITESPACES
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.cc :call DeleteTrailingWS()
autocmd BufWrite *.h :call DeleteTrailingWS()
autocmd BufWrite *.c :call DeleteTrailingWS()
" }}}
" {{{ FROM 'no_plugins' TALK

" {{{ FINDING FILES
" - :find <tab> etc.

" search into subfolders
" privides tab-completion for all file-related tasks
set path+=**

" display all matching files when we tab complete
set wildmenu

" }}}

" {{{ TAG JUMPING
" - ^] to jump to tag under cursor
" - g^] for ambigous tags

" create the tags file (requires ctags)
command! MakeTags !ctags -R .

" }}}

" {{{ AUTOCOMPLETE

" documented in |ins-completion|
" - ^x^n for JUST this file
" - ^x^f for filenames
" - ^x^] for tags only
" - ^n for basic usage (^n and ^p to go back and forth)

" }}}

" {{{ FILE BROWSING 
" documented in |netrw-browse-maps|
" - :edit a folder to open file browser
" - <CR>/v/t to open in h-split/v-split/tab

" tweaks for browsing
let g:netrw_banner=0       " disable banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1         " open splits to the right
let g:netrw_liststyle=3    " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" }}}

" {{{ SNIPPETS

" read empty html template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/snippets/skeleton.html<CR>3jwf>a

" BUILD INTEGRATION
" steal Mr. Bradley's formatter and add it to our spec_helper
"
" configure the :make to run RSpec (or something else)
set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter

" }}}

" }}}
" run check on write
"autocmd BufWritePost *.py call Flake8()
" show errors in file
"let g:flake8_show_in_file=1
