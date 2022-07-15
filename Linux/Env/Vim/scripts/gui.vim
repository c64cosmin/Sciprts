"set mouse=a
if has("gui_running")
set guioptions=!c
let g:c64_guifontstring="Liberation Mono"
let g:c64_fontseparator=" "

let g:c64_fontzoommax=30
let g:c64_fontzoommin=3
let g:c64_fontzoomdef=10
let g:c64_fontzoom=c64_fontzoomdef

function C64_fontzoomup()
    let g:c64_fontzoom=g:c64_fontzoom+1
    if g:c64_fontzoom > g:c64_fontzoommax
        let g:c64_fontzoom=g:c64_fontzoommax
    endif
    let guifontstring=g:c64_guifontstring . g:c64_fontseparator . g:c64_fontzoom
    let &guifont=guifontstring
endfunction

function C64_fontzoomdw()
    let g:c64_fontzoom=g:c64_fontzoom-1
    if g:c64_fontzoom < g:c64_fontzoommin
        let g:c64_fontzoom=g:c64_fontzoommin
    endif
    let guifontstring=g:c64_guifontstring . g:c64_fontseparator . g:c64_fontzoom
    let &guifont=guifontstring
endfunction

function C64_fontzoomdef()
    let g:c64_fontzoom=g:c64_fontzoomdef
    let guifontstring=g:c64_guifontstring . g:c64_fontseparator . g:c64_fontzoom
    let &guifont=guifontstring
endfunction

nnoremap z= :call C64_fontzoomup()<CR>
nnoremap z- :call C64_fontzoomdw()<CR>
nnoremap z0 :call C64_fontzoomdef()<CR>

call C64_fontzoomdef()
endif
