"" REQUIRED
set nocompatible
filetype off

""" BUNDLE MANAGEMENT
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle itself
Bundle 'gmarik/vundle'

" plugins
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'majutsushi/tagbar'
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'bufexplorer.zip'
" Bundle 'Screen-vim---gnu-screentmux'
" Bundle 'godlygeek/csapprox'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'moll/vim-node'
" Bundle 'Vim-R-plugin'
" Bundle "pangloss/vim-javascript"

" colorschemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'lsdr/monokai'
Bundle 'nanotech/jellybeans.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'tomasr/molokai'
Bundle 'Pychimp/vim-luna'

" indent plugins load by filetypes
filetype plugin indent on

" color terminals
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

""" PLUGINS

" latex
let g:tex_flavor = "latex"
set suffixes+=.log,.aux,.bbl,.blg,.idx,.ilg,.ind,.out,.pdf

" rainbow parens
let g:lisp_rainbow=1

""" GENERAL SETTINGS
" Some are overwritten in ftplugin

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=cro

syntax on

colorscheme jellybeans

set shortmess+=I            " remove welcome screen

" gvim options
set guioptions-=m           " remove menu bar
set guioptions-=T           " remove toolbar
set guioptions-=r           " remove right-hand scroll bar

set number                  " line numbers
set showcmd                 " show partial command on bot of screen
set hidden                  " opening new buffer hides instead of close
set ruler                   " show line and column nums

" tab completion
set wildmenu
set wildmode=list:longest,full

set hlsearch                " highlight search

" indention
set expandtab               " spaces not tabs
set softtabstop=4           " makes spaces seem like real tabs
set shiftwidth=4            " > and < size to indent/unindent
set tabstop=4               " number of spaces for a tab

""" KEY MAPPINGS

let mapleader=','

" toggles
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :TagbarToggle<CR>
nmap <leader>l :set invnumber<CR>
set pastetoggle=<F2>

" search word under cursor
nnoremap <Leader>s /<C-r><C-w>

" search and replace word under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

" search and replace visual selection
vnoremap <leader>r "hy:%s/\<<C-r>h\>/

" faster buffer switch
nnoremap <leader>e :ls<CR>:b<Space>

" turn off highlight after search
nnoremap <CR> :noh<CR><CR>
nnoremap <leader>c :bp\|bd #<CR>

" Faster scrolling
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" Next, previous buffer
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" new tab
nmap <C-t> :tabnew<CR>

" next/prev tab
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

" move tabs left/right
nnoremap <silent> <A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-l> :execute 'silent! tabmove ' . tabpagenr()<CR>

" replace colon with semicolon
map ; :
