
call plug#begin('~/.config/nvim/plugged')

" Appearance
Plug 'ayu-theme/ayu-vim'
Plug 'haishanh/night-owl.vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'elvessousa/sobrio'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tweekmonster/startuptime.vim'
Plug 'Yggdroot/indentLine'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Completion / linters / formatters
" Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'npm install'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'airblade/vim-gitgutter'

call plug#end()

let mapleader = ' '

runtime ./coc.vim

" gruvbox options
let g:gruvbox_italic = 1
let g:gruvbox_bold = 0
let g:gruvbox_contrast_dark = 'medium' " soft, medium and hard
" let g:gruvbox_contrast_light = 'medium' " soft, medium and hard

" one options
let g:one_allow_italics = 1 " I love italic for comments
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

" ayu options
let ayucolor='dark' " light, mirage, dark

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
