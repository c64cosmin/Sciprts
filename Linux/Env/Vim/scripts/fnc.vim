function! ToggleExplorer()
    "find if there is a netrw
    let netrw_winid = 0
    for winid in gettabinfo(tabpagenr())[0].windows
        if getwinvar(winid, "&ft") == "netrw"
            let netrw_winid = winid
        endif
    endfor

    "if there is no netrw
    if netrw_winid == 0
        exec 'Vexplore ' . expand('%:p:h')
        wincmd H
        exec 'vertical resize 50'
    else
        "if we are on the netrw
        if win_getid() == netrw_winid
            exec 'q'
        else
            call win_gotoid(netrw_winid)
        endif
    endif
endfun
nmap <C-e> :call ToggleExplorer()<CR>

"undotree
function! ToggleUndoTree()
    "find if there is a undotree
    let undotree_winid = 0
    for winid in gettabinfo(tabpagenr())[0].windows
        if getwinvar(winid, "&ft") == "undotree"
            let undotree_winid = winid
        endif
    endfor

    "if there is no undotree
    if undotree_winid == 0
        let currentwindow = win_getid()
        exec 'UndotreeToggle'
        exec 'UndotreeFocus'
        exec 'vertical resize 40'
        exec 'call win_gotoid(' . currentwindow . ')'
    else
        "if we are on the netrw
        if win_getid() == undotree_winid
            exec 'UndotreeToggle'
        else
            exec 'UndotreeFocus'
        endif
    endif
endfun
nmap <C-u> :call ToggleUndoTree()<CR>

function! CloseHiddenBuffers()
    for buf in getbufinfo()
        if len(buf.windows) == 0 && len(get(buf, "popups", [])) == 0
            exec 'bw! ' . buf.bufnr
        endif
    endfor
endfun
