"""""""""""""""""""" MAPPINGS """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jk <esc>
inoremap <special> <esc> <nop>
inoremap <esc>^[ <esc>^[

nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

nnoremap Y y$ " yank till end of line
nnoremap n nzzzv " move to next item but keep focus centered
nnoremap N Nzzzv " move to prev item but keep focus centered
nnoremap J mzJ`z " join but keep focus

" break undo chain for these chars for undoing in chunks
inoremap . .<c-g>u
inoremap , ,<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" move lines up/down
vnoremap <a-s-j> :m '>+1<CR>gv=gv
vnoremap <a-s-k> :m '<-2<CR>gv=gv
" inoremap <a-s-j> <esc>:m .+1<CR>==
" inoremap <a-s-k> <esc>:m .-2<CR>==
nnoremap <a-s-j> :m .+1<CR>==
nnoremap <a-s-k> :m .-2<CR>==

nnoremap q <nop> " Avoid unintentional macros

nnoremap <c-c> :bd!<CR> " close current buffer

" uppercase the current word
" inoremap <c-s-u> <esc>viwUea
" nnoremap <c-s-u> viwU

nnoremap <leader>j :w<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <leader>fi mzgg=G`z<CR> " fix indentation
nnoremap <leader>nh :noh<CR>
nnoremap <leader>sw :set wrap linebreak<cr>
nnoremap <leader>ssw :set nowrap<cr>
nnoremap <leader>t :below 10sp term://$SHELL<CR>i
tnoremap <Esc> <C-\><C-n>

" change working directory to where the file in the buffer is located
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>wj :wincmd j<CR>
nnoremap <leader>wk :wincmd k<CR>
nnoremap <leader>wl :wincmd l<CR>
tnoremap <leader>wh <C-\><C-n><C-w>h<CR>
tnoremap <leader>wj <C-\><C-n><C-w>j<CR>
tnoremap <leader>wk <C-\><C-n><C-w>k<CR>
tnoremap <leader>wl <C-\><C-n><C-w>l<CR>

nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bprev<CR>
nnoremap <leader>mt :only<CR>

" fzf mappings
" Most commands support CTRL-T / CTRL-X / CTRL-V key bindings to open in a new tab, a new split, or in a new vertical split
nnoremap ff :Files<CR>
nnoremap fg :GFiles<CR>
nnoremap <leader>ag :Ag<CR>
nnoremap <C-b> :b<space>
" nnoremap <leader>gfi :GFiles<CR>
" nnoremap <leader>buf :Buffers<CR>
" nnoremap <leader>fag :Ag<CR>
" nnoremap <leader>frg :Rg<CR>
" nnoremap <leader>lin :Lines<CR>
" nnoremap <leader>bli :BLines<CR>
" nnoremap <leader>tag :Tags<CR>
" nnoremap <leader>bta :BTags<CR>

" Disable arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" need these mappings/stuff to know ----------
" how to replace in current buffer => %s/term/replace/
" how to replace in all files in a project
" how to replace words only
" how to replace within any text
" how to search with * or #, then replace those only
