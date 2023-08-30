nmap <Leader>ye :YcmDiags<CR>
nmap <Leader>yd :YcmCompleter GoToDeclaration<CR>
nmap <Leader>yf :YcmCompleter GoToDefinition<CR>
nmap <Leader>yi :YcmCompleter GoToInclude<CR>
nmap <Leader>yr :YcmCompleter GoToReferences<CR>
nmap <Leader>yx :YcmCompleter FixIt<CR>
nmap <Leader>yn :YcmCompleter RefactorRename 
nmap <Leader>yy :YcmRestartServer<CR>
nmap <leader>yt <plug>(YCMHover)
nmap <Leader>vd  :vsplit<CR><C-w>w:YcmCompleter GoToDeclaration<CR>
nmap <Leader>vf  :vsplit<CR><C-w>w:YcmCompleter GoToDefinition<CR>
nmap <Leader>vi  :vsplit<CR><C-w>w:YcmCompleter GoToInclude<CR>
nmap <Leader>sd   :split<CR><C-w>w:YcmCompleter GoToDeclaration<CR>
nmap <Leader>sf   :split<CR><C-w>w:YcmCompleter GoToDefinition<CR>
nmap <Leader>si   :split<CR><C-w>w:YcmCompleter GoToInclude<CR>
"nmap <C-LeftMouse> <LeftMouse>:YcmCompleter GoTo<CR>
