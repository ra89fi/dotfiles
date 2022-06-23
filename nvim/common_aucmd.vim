augroup common_group
    autocmd!
    autocmd BufEnter *.avsc setlocal ft=json
    autocmd BufEnter *.cls setlocal ft=java
    autocmd BufEnter *.go setlocal noexpandtab
    autocmd BufEnter *.zsh-theme setlocal ft=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter,BufNewFile .eslintrc,.prettierrc,.babelrc setlocal ft=json
    autocmd FileType crontab setlocal backupcopy=yes
    autocmd FileType netrw call Netrw_mappings()
    autocmd InsertLeave * set nopaste   " Turn off paste mode when leaving insert
    autocmd VimEnter * call FckThatMatchParen()
    autocmd VimEnter * highlight clear SignColumn
augroup END

" Create file without opening buffer
function! CreateInPreview()
  let l:filename = input('Filename: ')
  execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename
  redraw!
endfunction

" Netrw: create file using touch instead of opening a buffer
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction

function! g:FckThatMatchParen()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup run_commands
    autocmd!
    autocmd filetype python nnoremap <F5> :w <bar> exec '!python3 '.shellescape('%')<CR>
    autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc -Wall -W -pedantic -ansi -std=c99 -g '.shellescape('%').' -o '.shellescape('%:r').' -lm && ./'.shellescape('%:r')<CR>
    autocmd filetype c nnoremap <F6> :w <bar> exec '!gcc -Wall -W -pedantic -ansi -std=c99 -g '.shellescape('%').' -o '.shellescape('%:r').' -lm'<CR>
    autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ -Wall -W -pedantic -std=c++1z -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -g -fsanitize=undefined '.shellescape('%').' -o '.shellescape('%:r').' -lm && ./'.shellescape('%:r')<CR>
    autocmd filetype cpp nnoremap <F6> :w <bar> exec '!g++ -Wall -W -pedantic -std=c++1z -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -g -fsanitize=undefined '.shellescape('%').' -o '.shellescape('%:r').' -lm'<CR>
    autocmd filetype javascript nnoremap <F5> :w <bar> exec '!node '.shellescape('%')<CR>
augroup END
