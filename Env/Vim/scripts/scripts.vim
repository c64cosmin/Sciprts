set runtimepath^=~/.vim/bundle/ctrlp.vim

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

nmap <A-Down> :m .+1<CR>==
nmap <A-Up> :m .-2<CR>==
imap <A-Down> <Esc>:m .+1<CR>==i
imap <A-Up> <Esc>:m .-2<CR>==i
vmap <A-Down> :m '>+1<CR>gv=gv
vmap <A-Up> :m '<-2<CR>gv=gv
nmap <F3> :set hlsearch! hlsearch?<CR>
nmap gg :tab split<CR>
nmap gb :let $VIM_DIR=expand('%:p:h')<CR>:tab term<CR>cd $VIM_DIR;clear<CR>
nmap ge :tab split<CR>:Ex<CR>
nmap <C-w>b :let $VIM_DIR=expand('%:p:h')<CR>:vert term<CR>cd $VIM_DIR;clear<CR>
nmap <C-w>e :Vex<CR>
nmap <C-e> :Ex<CR>
nmap g<Right> :tabm +1<CR>
nmap g<Left> :tabm -1<CR>
nmap <Leader>l :set list! list?<CR>
nmap <Leader>p  :call CloseHiddenBuffers()<CR>:source     ~/.vim/session/last.vim<CR>
nmap <Leader>P  :call CloseHiddenBuffers()<CR>:mksession! ~/.vim/session/last.vim<CR>
nmap <Leader>op :call CloseHiddenBuffers()<CR>:source ~/.vim/session/
nmap <Leader>oP :call CloseHiddenBuffers()<CR>:mksession! ~/.vim/session/last.vim<CR>:mksession! ~/.vim/session/

function! CloseHiddenBuffers()
    for buf in getbufinfo()
        if len(buf.windows) == 0 && len(buf.popups) == 0
            exec 'bw! ' . buf.bufnr
        endif
    endfor
endfun
