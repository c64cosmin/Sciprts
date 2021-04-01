"Alt up/down to move lines
nmap <A-Down> :m .+1<CR>==
nmap <A-Up> :m .-2<CR>==
imap <A-Down> <Esc>:m .+1<CR>==i
imap <A-Up> <Esc>:m .-2<CR>==i
vmap <A-Down> :m '>+1<CR>gv=gv
vmap <A-Up> :m '<-2<CR>gv=gv
"F3 enable/disable search highlight
nmap <F3> :set hlsearch! hlsearch?<CR>
"Create new vertical terminal in current dir
nmap <C-w>b :let $VIM_DIR=expand('%:p:h')<CR>:vert term<CR>cd $VIM_DIR;clear<CR>
nmap <C-w>e :Lex<CR>
nmap <C-e> :call ToggleExplorer()<CR>
"Move tabs left/right
nmap g<Right> :tabm +1<CR>
nmap g<Left> :tabm -1<CR>
nmap gg :tab split<CR>
"New terminal tab in current dir
nmap gb :let $VIM_DIR=expand('%:p:h')<CR>:tab term<CR>cd $VIM_DIR;clear<CR>
nmap ge :Tex<CR>
nmap <Leader>l :set list! list?<CR>
nmap <Leader>w :set wrap! wrap?<CR>
nmap <Leader>p :call CloseHiddenBuffers()<CR>:source     ~/.vim/session/
nmap <Leader>P :call CloseHiddenBuffers()<CR>:mksession! ~/.vim/session/
