function ToggleExplorer()
    "find if there is a netrw
    let netrw_winid = 0
    for winid in gettabinfo(tabpagenr())[0].windows
        if getwinvar(winid, "&ft") == "netrw"
            let netrw_winid = winid
        endif
    endfor
    if netrw_winid == 0
        exec 'Lexplore ' . expand('%:p:h')
    else
        if win_getid() == netrw_winid
            exec 'q'
        else
            call win_gotoid(netrw_winid)
        endif
    endif
endfun

function! CloseHiddenBuffers()
    for buf in getbufinfo()
        if len(buf.windows) == 0 && len(buf.popups) == 0
            exec 'bw! ' . buf.bufnr
        endif
    endfor
endfun
