"motions
nnoremap H 0
nnoremap L $

"QoL
xnoremap <C-p> pgvygv<Esc>
nnoremap <C-p> p
nnoremap <C-y> "+y
xnoremap <C-y> "+y

"Alt up/down to move lines
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==i
inoremap <A-Up> <Esc>:m .-2<CR>==i
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

"F3 enable/disable search highlight
nnoremap <F3> :set hlsearch! hlsearch?<CR>

"Create new vertical terminal in current dir
nnoremap <C-w>b :let $VIM_DIR=expand('%:p:h')<CR>:vert term<CR>cd $VIM_DIR;clear<CR>

"Move tabs left/right
nnoremap g<Right> :tabm +1<CR>
nnoremap g<Left> :tabm -1<CR>
nnoremap gg :tab split<CR>

"New terminal tab in current dir
nnoremap gb :let $VIM_DIR=expand('%:p:h')<CR>:tab term<CR>cd $VIM_DIR;clear<CR>
nnoremap ge :Tex<CR>

"editor
nnoremap <Leader>el :set list! list?<CR>
nnoremap <Leader>ew :set wrap! wrap?<CR>
nnoremap <Leader>en :set number! number?<CR>:set relativenumber! relativenumber?<CR>
nnoremap <Leader>eN :set number! number?<CR>
nnoremap <Leader>ec :set cursorline! cursorline?<CR>
nnoremap <Leader>eh :%!xxd<CR>
nnoremap <Leader>eH :%!xxd -r<CR>

"project
nnoremap <Leader>pp :call CloseHiddenBuffers()<CR>:source ~/.vim/session/last.vim<CR>
nnoremap <Leader>po :call CloseHiddenBuffers()<CR>:source ~/.vim/session/
nnoremap <Leader>pw :call CloseHiddenBuffers()<CR>:! cp ~/.vim/session/* ~/.vim/sessionbackup<CR>:mksession! ~/.vim/session/last.vim<CR>:mksession! ~/.vim/session/

"EasyMotion
nnoremap s <Plug>(easymotion-overwin-f2)
nnoremap S <Plug>(easymotion-bd-jk)

"vim-signature
nnoremap <Leader>em :SignatureToggleSigns<CR>

"auto completer
source ~/.vim/scripts/coc.vim

"Prettier
nnoremap <Leader>ep <Plug>(Prettier)

"fzf
nnoremap <Leader>fs :Rg<CR>
nnoremap <Leader>fl :BLines<CR>
nnoremap <Leader>ff :Buffers<CR>
nnoremap <Leader>fd :Files<CR>
nnoremap <Leader>fg :GFiles<CR>

"harpwn
nnoremap <silent> + :HarpwnAdd<CR>
nnoremap <silent> - :HarpwnMenu<CR>
nnoremap <silent> > :HarpwnNext 1<CR>
nnoremap <silent> < :HarpwnNext -1<CR>
