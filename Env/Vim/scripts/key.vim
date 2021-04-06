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
nmap <C-w>e :Vex<CR>
nmap <C-e> :call ToggleExplorer()<CR>
"Move tabs left/right
nmap g<Right> :tabm +1<CR>
nmap g<Left> :tabm -1<CR>
nmap gg :tab split<CR>
"New terminal tab in current dir
nmap gb :let $VIM_DIR=expand('%:p:h')<CR>:tab term<CR>cd $VIM_DIR;clear<CR>
nmap ge :Tex<CR>
nmap <Leader>el :set list! list?<CR>
nmap <Leader>ew :set wrap! wrap?<CR>
nmap <Leader>en :set number! number?<CR>
nmap <Leader>eN :set relativenumber! relativenumber?<CR>
nmap <Leader>p :call CloseHiddenBuffers()<CR>:source     ~/.vim/session/
nmap <Leader>P :call CloseHiddenBuffers()<CR>:mksession! ~/.vim/session/

"EasyMotion
nmap s <Plug>(easymotion-overwin-f2)
nmap S <Plug>(easymotion-bd-jk)
"vim-signature
nmap <Leader>em :SignatureToggleSigns<CR> 

if has("gui_running")
"YouCompleteMe
nmap <Leader>yd :YcmCompleter GoToDeclaration<CR>
nmap <Leader>yf :YcmCompleter GoToDefinition<CR>
nmap <Leader>yi :YcmCompleter GoToInclude<CR>
nmap <Leader>yr :YcmCompleter GoToReferences<CR>
nmap <Leader>yx :YcmCompleter FixIt<CR>
nmap <Leader>yn :YcmCompleter RefactorRename<CR>
nmap <Leader>yy :YcmRestartServer<CR>
nmap <leader>yt <plug>(YCMHover)
nmap <Leader>vd  :vsplit<CR><C-w>w:YcmCompleter GoToDeclaration<CR>
nmap <Leader>vf  :vsplit<CR><C-w>w:YcmCompleter GoToDefinition<CR>
nmap <Leader>vi  :vsplit<CR><C-w>w:YcmCompleter GoToInclude<CR>
nmap <Leader>sd   :split<CR><C-w>w:YcmCompleter GoToDeclaration<CR>
nmap <Leader>sf   :split<CR><C-w>w:YcmCompleter GoToDefinition<CR>
nmap <Leader>si   :split<CR><C-w>w:YcmCompleter GoToInclude<CR>
endif
