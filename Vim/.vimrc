source ~/.vim/scripts/gui.vim

set tabstop=4
set expandtab
set ff=unix
set encoding=utf-8
set belloff=all
set novisualbell
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
nnoremap g<C-t> :tab split<CR>
nnoremap gb :tab term<CR>
nnoremap <C-b> :vert term<CR>
nnoremap <C-w> :Vex<CR>
nnoremap <C-e> :Ex<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-s> :source <Up><CR>
