set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'kevinw/pyflakes-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'Raimondi/delimitMate'
Plugin 'docunext/closetag.vim'
Plugin 'ervandew/supertab'

call vundle#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

syntax on
set number
set background=dark
set ruler
set more
set autoread
set hidden
set noautowrite
set lazyredraw
set showmode
set showcmd
set autoindent
set smarttab
set tabstop=4
set expandtab
set shiftwidth=4
set scrolloff=5
set sidescrolloff=5
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2
set undolevels=1000
set updatecount=100
set complete=.,w,b,u,U,t,i,d
set ttyfast
set noerrorbells
set shell=bash
set fileformats=unix
set ff=unix
filetype on
filetype indent on
filetype plugin on
set wildmode=longest:full
set wildmenu
let maplocalleader=','
set laststatus=2
set mouse=a
set listchars=tab:>-,trail:.,extends:>,precedes:<
set list
syntax enable

" searching
set incsearch
set smartcase
set hlsearch
set showmatch
set diffopt=filler,iwhite

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-n> :NERDTreeToggle<cr>

nmap <LocalLeader>tl :set list!<cr>
nmap <LocalLeader>pp :set paste!<cr>

syn match tab display "\t"
hi link tab Error

noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj

colorscheme solarized

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}]
set statusline+=%h
set statusline+=%m
set statusline+=%r
set statusline+=%y
set statusline+=%=
set statusline+=%c,
set statusline+=%l/%L
set statusline+=\ %P
