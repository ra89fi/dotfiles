" let g:user_emmet_install_global = 0

call plug#begin()
    Plug 'ap/vim-css-color', { 'for': ['css', 'scss'] }
    Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['js', 'jsx'] }
    Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
    Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'javascript', 'javascriptreact'] }
    Plug 'JBakamovic/yaflandia', { 'for': ['c', 'cpp', 'h', 'hpp'] }
    if filereadable("CMakeLists.txt")
        Plug 'cdelledonne/vim-cmake'
        nnoremap cmg :!cmake -D CMAKE_BUILD_TYPE=Debug -D CMAKE_EXPORT_COMPILE_COMMANDS=ON -S . -B Debug<cr>
        nnoremap cmb :CMakeBuild<cr>
        autocmd BufWritePost *.[chCH],*.cc,*.hh,*.[ch]xx,*.cpp :CMakeBuild
    endif
call plug#end()

augroup custom_group
    autocmd!
    autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
    autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
    autocmd BufNewFile,BufRead *.es6 setlocal ft=javascript
    autocmd BufNewFile,BufRead *.jsx setlocal ft=javascriptreact
    autocmd BufNewFile,BufRead *.md setlocal ft=markdown
    autocmd BufNewFile,BufRead *.tsx setlocal ft=typescriptreact
    " autocmd FileType html,css EmmetInstall
    autocmd FileType scss setlocal iskeyword+=@-@
    autocmd FileType javascript :imap rsc import React from 'react';<CR><CR>const Foo = () => {<CR>return (<div></div>);<CR>};<CR><CR>export default Foo;jk05k6l
augroup END

" command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

let g:cmake_link_compile_commands = 1
let g:cmake_console_size = 5
let g:cmake_jump_on_error = 1
let g:cmake_console_position =  'botright'

" echo expand('%:t:r')
