"motions
nmap H 0
nmap L $

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

"Move tabs left/right
nmap g<Right> :tabm +1<CR>
nmap g<Left> :tabm -1<CR>
nmap gg :tab split<CR>

"New terminal tab in current dir
nmap gb :let $VIM_DIR=expand('%:p:h')<CR>:tab term<CR>cd $VIM_DIR;clear<CR>
nmap ge :Tex<CR>

"editor
nmap <Leader>el :set list! list?<CR>
nmap <Leader>ew :set wrap! wrap?<CR>
nmap <Leader>en :set number! number?<CR>:set relativenumber! relativenumber?<CR>
nmap <Leader>eN :set number! number?<CR>
nmap <Leader>ec :set cursorline! cursorline?<CR>
nmap <Leader>eh :%!xxd<CR>
nmap <Leader>eH :%!xxd -r<CR>

"project
nmap <Leader>pp :call CloseHiddenBuffers()<CR>:source ~/.vim/session/last.vim<CR>
nmap <Leader>po :call CloseHiddenBuffers()<CR>:source ~/.vim/session/
nmap <Leader>pw :call CloseHiddenBuffers()<CR>:! cp ~/.vim/session/* ~/.vim/sessionbackup<CR>:mksession! ~/.vim/session/last.vim<CR>:mksession! ~/.vim/session/

"EasyMotion
nmap s <Plug>(easymotion-overwin-f2)
nmap S <Plug>(easymotion-bd-jk)

"vim-signature
nmap <Leader>em :SignatureToggleSigns<CR> 

"auto completer
source ~/.vim/scripts/coc.vim

"Prettier
nmap <Leader>ep <Plug>(Prettier)

"fzf
nmap <Leader>fs :Rg<CR>
nmap <Leader>fl :BLines<CR>
nmap <Leader>ff :Buffers<CR>
nmap <Leader>fd :Files<CR>
nmap <Leader>fg :GFiles<CR>

"harpwn
nmap <silent> + :HarpwnAdd<CR>
nmap <silent> = :HarpwnMenu<CR>
nmap <silent> > :HarpwnNext 1<CR>
nmap <silent> < :HarpwnNext -1<CR>
