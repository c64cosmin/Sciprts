function ToggleExplorer(type)
	"find if there is a netrw
	let netrw_winid = 0
	for winid in gettabinfo(tabpagenr())[0].windows
		if getwinvar(winid, "&ft") == "netrw"
			let netrw_winid = winid
		endif
	endfor
	"if there is no netrw
	if netrw_winid == 0
		"create one
		if a:type == 0
			Explore
		endif
		"or create a left drawer
		if a:type == 1
			exec 'Lexplore ' . expand('%:p:h')
		endif
	else
		"if we are on the netrw
		if win_getid() == netrw_winid
			if a:type == 0
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
			endif
			if a:type == 1
				exec 'q'
			endif
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
