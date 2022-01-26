function ToggleExplorer()
    "we are in netrw
    if &ft == "netrw"
        if exists("w:netrw_rexfile")
            if w:netrw_rexfile == "" || w:netrw_rexfile == "NetrwTreeListing"
                exec 'q'
            else
                exec 'e ' . w:netrw_rexfile
            endif
        else
            if exists("w:netrw_rexlocal")
                Rexplore
            else
                exec 'q'
            endif
        endif
    else
        "is there netrw open
        let netrw_isopen = 0
        for winid in gettabinfo(tabpagenr())[0].windows
            if getwinvar(winid, "&ft") == "netrw"
                let netrw_isopen = 1
                call win_execute(winid, "q")
            endif
        endfor
        if netrw_isopen == 0
            exec 'Lexplore ' . expand('%:p:h')
            exec 'vertical resize 50'
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
