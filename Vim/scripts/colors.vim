colorscheme hypermildmine

let s:shade0="#101020"
let s:shade1="#202040"
let s:shade2="#404080"
let s:shade3="#6060a0"
let s:shade4="#70a0f0"
let s:shadg0="#305030"
let s:shadg1="#38a038"
let s:shadg2="#40f040"
let s:none  ="NONE"
let s:red   ="#ff0000"
let s:black ="#000000"
let s:white ="#ffffff"

exec "hi Pmenu            guibg=" . s:shade1 . " guifg=" . s:shade3
exec "hi PmenuSel         guibg=" . s:shade2 . " guifg=" . s:shade4
exec "hi Title            guibg=" . s:none   . " guifg=" . s:shade4
exec "hi EasyMotionTarget guifg=" . s:red                           . " gui=bold"
exec "hi EasyMotionShade  guifg=" . s:shade2
exec "hi TabLineFill      guifg=" . s:shade1
exec "hi TabLine          guibg=" . s:shade0 . " guifg=" . s:shade3
exec "hi TabLineSel       guibg=" . s:shade2 . " guifg=" . s:shade4
exec "hi VertSplit        guibg=" . s:shade1 . " guifg=" . s:shade4
exec "hi StatusLine       guibg=" . s:shade4 . " guifg=" . s:black  . " gui=bold"
exec "hi StatusLineNC     guibg=" . s:shade2 . " guifg=" . s:black  . " gui=none"
exec "hi LineNr           guibg=" . s:shade2 . " guifg=" . s:shade4 . " gui=bold"
exec "hi Visual           guibg=" . s:shadg0 . " guifg=" . s:shadg1 . " gui=bold"
exec "hi Cursor           guibg=" . s:shadg1 . " guifg=" . s:shadg2 . " gui=bold"
