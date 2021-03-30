source ~/.vim/scripts/key.vim
source ~/.vim/scripts/set.vim

set runtimepath^=~/.vim/bundle/ctrlp.vim

if &diff
    hi DiffAdd    guifg=NONE    guibg=#002200
    hi DiffChange guifg=NONE    guibg=#000044
    hi DiffText   guifg=NONE    guibg=NONE
    hi DiffDelete guifg=#660000 guibg=#000000
    hi DiffLine   guifg=#ff0000
endif

function! CloseHiddenBuffers()
    for buf in getbufinfo()
        if len(buf.windows) == 0 && len(buf.popups) == 0
            exec 'bw! ' . buf.bufnr
        endif
    endfor
endfun
