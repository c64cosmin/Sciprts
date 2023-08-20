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
        exec 'UndotreeToggle'
        exec 'UndotreeFocus'
        exec 'vertical resize 40'
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
        if len(buf.windows) == 0 && len(buf.popups) == 0
            exec 'bw! ' . buf.bufnr
        endif
    endfor
endfun

let g:EasyJumpWindowList = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
let g:EasyJumpBufferList = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
function! EasyJump(index, action)
    if a:action == 1
        " Save the current window ID
        let g:EasyJumpWindowList[a:index] = win_getid()
        let g:EasyJumpBufferList[a:index] = bufnr()
        echo 'Saved to index ' . a:index
    elseif a:action == 0
        let winid = g:EasyJumpWindowList[a:index]
        let bufid = g:EasyJumpBufferList[a:index]

        if winid != -1
            "try to move to that window
            exec 'call win_gotoid(' . winid . ')'
            "did this window id lead us to the proper buffer?
            if bufid != bufnr()
                "in current tab is the buffer open in another window?
                let window_list = range(1, winnr('$'))
                for it_winid in window_list
                    let it_bufid = winbufnr(it_winid)
                    "we found a window with the same buffer
                    if it_bufid == bufid
                        exec 'call win_gotoid(' . it_winid . ')'
                        let g:EasyJumpWindowList[a:index] = win_getid()
                        return
                    endif
                endfor

                "there is no window with that buffer open here
                "search for other tabs
                let tab_list = range(1, tabpagenr('$'))
                for it_tabid in tab_list
                    let window_list = gettabinfo(it_tabid)[0].windows
                    for it_winid in window_list
                        let it_bufid = winbufnr(it_winid)
                        "we found a window with the same buffer
                        if it_bufid == bufid
                            exec 'call win_gotoid(' . it_winid . ')'
                            let g:EasyJumpWindowList[a:index] = win_getid()
                            return
                        endif
                    endfor
                endfor

                "there is not more window with that buffer, open a new window
                exec 'vsplit'
                exec 'buffer' . bufid
                let g:EasyJumpWindowList[a:index] = win_getid()
            endif
        endif
    endif
endfunction
nmap <silent> g1 :call EasyJump(0,0)<CR>
nmap <silent> g2 :call EasyJump(1,0)<CR>
nmap <silent> g3 :call EasyJump(2,0)<CR>
nmap <silent> g4 :call EasyJump(3,0)<CR>
nmap <silent> g5 :call EasyJump(4,0)<CR>
nmap <silent> g6 :call EasyJump(5,0)<CR>
nmap <silent> g7 :call EasyJump(6,0)<CR>
nmap <silent> g8 :call EasyJump(7,0)<CR>
nmap <silent> g9 :call EasyJump(8,0)<CR>
nmap <silent> g0 :call EasyJump(9,0)<CR>
nmap <silent> <Leader>m1 :call EasyJump(0,1)<CR>
nmap <silent> <Leader>m2 :call EasyJump(1,1)<CR>
nmap <silent> <Leader>m3 :call EasyJump(2,1)<CR>
nmap <silent> <Leader>m4 :call EasyJump(3,1)<CR>
nmap <silent> <Leader>m5 :call EasyJump(4,1)<CR>
nmap <silent> <Leader>m6 :call EasyJump(5,1)<CR>
nmap <silent> <Leader>m7 :call EasyJump(6,1)<CR>
nmap <silent> <Leader>m8 :call EasyJump(7,1)<CR>
nmap <silent> <Leader>m9 :call EasyJump(8,1)<CR>
nmap <silent> <Leader>m0 :call EasyJump(9,1)<CR>
