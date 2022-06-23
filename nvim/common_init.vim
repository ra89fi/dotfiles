" Fundamentals "{{{
" ---------------------------------------------------------------------
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

runtime! macros/matchit.vim
scriptencoding utf-8
filetype plugin indent on
syntax off

set ai  " Auto indent
set autoread
set backspace=start,eol,indent
set backupskip=/tmp/*,/private/tmp/*
set clipboard+=unnamedplus
set cmdheight=2
set completeopt=noinsert,menuone,noselect
set encoding=utf-8
set expandtab
set exrc
set ffs=unix,dos,mac " use unix type file ending format
set fileencodings=utf-8,sjis,euc-jp,latin
set fillchars+=vert:┃
set foldenable          " don't fold files by default on open
set foldlevelstart=10   " start with fold level of 1
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set formatoptions+=r    " Add asterisks in block comments
set hid " hide buffer when it is abandoned
set hlsearch
set ignorecase  " Ignore case when searching
set inccommand=split
set incsearch           " search as characters are entered
set laststatus=2
set lazyredraw  " Don't redraw while executing macros (good performance config)
" set listchars=tab:→\ ,eol:¬,nbsp:␣,trail:•,precedes:«,extends:»
" set list
"set mat=2  " How many tenths of a second to blink when matching brackets
set modelines=2
set nobackup
set nocompatible
set noerrorbells " no error sound
set nosc noru nosm
set noswapfile
set novisualbell
set nowrap  " No Wrap lines
set nowritebackup
set number
set path+=.,**    " Finding files - Search down into subfolders
set relativenumber
set scrolloff=5
set shell=bash
set shiftwidth=4
set shortmess+=c " Don't pass messages to |ins-completion-menu|.
set showbreak=↪\
set showcmd
set showmatch
set showmode
set sidescroll=5
set sidescrolloff=5
set signcolumn=yes
"set si  " Smart indent
set smartcase
set smarttab    " Be smart when using tabs ;)
set softtabstop=4       " 4 space tab
set splitbelow splitright
set tabstop=4
set tags+=./tags
set t_BE=   " Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_Co=256
set termguicolors
set title
"set ttimeoutlen=0
set textwidth=0
set wrapmargin=0
set updatetime=50
set wildignore+=*/node_modules/*,*.o,*.obj,*~,*.pyc,*.so,*.exe
set wildmenu

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

runtime ./common_aucmd.vim

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
" set colorcolumn=80
set cursorline

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
hi Comment cterm=italic gui=italic ctermfg=4 guifg=#9844c2 " comments are blue-ish

"}}}

" Plugins "{{{
" ---------------------------------------------------------------------
runtime ./common_plug.vim

"}}}

" Mappings "{{{
" ---------------------------------------------------------------------
runtime ./common_maps.vim

"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------
" true color
if exists("&winblend")
    set winblend=0
    set wildoptions=pum
    set pumblend=5
endif

set background=dark
colorscheme gruvbox
syntax on

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
" File browser
let g:netrw_banner=0
let g:netrw_liststyle=0
" let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
if has("unix")
    let s:uname = system("uname -s")
    " Do Mac stuff
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif
endif

:source ~/vimscript_test

"}}}

" Custom Functions "{{{
" ---------------------------------------------------------------------
" Function to trim extra whitespace in whole file
function! Trim()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
command! -nargs=0 Trim call Trim()

"}}}

" vim: set foldmethod=marker foldlevel=0:
