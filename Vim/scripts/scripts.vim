function! CloseHiddenBuffers()
    " figure out which buffers are visible in any tab
    let visible = {}
    for t in range(1, tabpagenr('$'))
        for b in tabpagebuflist(t)
            let visible[b] = 1
        endfor
    endfor
    " close any buffer that are loaded and not visible
    for buf in getbufinfo()
        if !has_key(visible, buf.bufnr)
            exe 'bwipeout ' . buf.bufnr
        endif
    endfor
endfun
