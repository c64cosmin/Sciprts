source ~/.vim/scripts/gui.vim

set tabstop=4
set expandtab
set ff=unix
set encoding=utf-8
set belloff=all
set novisualbell
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
let g:html_use_css=1
if &diff
    hi DiffAdd    guifg=NONE    guibg=#002200
    hi DiffChange guifg=NONE    guibg=#000044
    hi DiffText   guifg=NONE    guibg=NONE
    hi DiffDelete guifg=#660000 guibg=#000000
    hi DiffLine   guifg=#ff0000
endif
nmap gg :tab split<CR>
nmap gb :let $VIM_DIR=expand('%:p:h')<CR>:tab term<CR>cd $VIM_DIR<CR>
nmap ge :tab split<CR>:Ex<CR>
nmap <C-w>b :let $VIM_DIR=expand('%:p:h')<CR>:vert term<CR>cd $VIM_DIR<CR>
nmap <C-w>e :Vex<CR>
nmap <C-e> :Ex<CR>
nmap <C-s> :source ~/.vim/session/last.vim<CR>
nmap <Leader><C-s> :mksession! ~/.vim/session/last.vim<CR>
