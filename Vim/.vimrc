source ~/.vim/scripts/gui.vim

set tabstop=4
set expandtab
set ff=unix
set encoding=utf-8
set belloff=all
set novisualbell
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
nnoremap gg :tab split<CR>
nnoremap gb :let $VIM_DIR=expand('%:p:h')<CR>:tab term<CR>cd $VIM_DIR<CR>
nnoremap ge :tab split<CR>:Ex<CR>
nnoremap <C-w>b :let $VIM_DIR=expand('%:p:h')<CR>:vert term<CR>cd $VIM_DIR<CR>
nnoremap <C-w>e :Vex<CR>
nnoremap <C-e> :Ex<CR>
nnoremap <C-s> :source <Up><CR>
