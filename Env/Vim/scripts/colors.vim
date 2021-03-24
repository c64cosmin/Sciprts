colorscheme hypermildmine

let s:color_b0="#101020"
let s:color_b1="#202040"
let s:color_b2="#404080"
let s:color_b3="#6060a0"
let s:color_b4="#70a0f0"
let s:color_g0="#305030"
let s:color_g1="#38a038"
let s:color_g2="#40f040"
let s:color_r0="#601010"
let s:none  ="NONE"
let s:red   ="#ff0000"
let s:black ="#000000"
let s:white ="#ffffff"

exec "hi Pmenu            guibg=" . s:color_b1 . " guifg=" . s:color_b3
exec "hi PmenuSel         guibg=" . s:color_b2 . " guifg=" . s:color_b4
exec "hi Title            guibg=" . s:none     . " guifg=" . s:color_b4
exec "hi TabLineFill      guifg=" . s:color_b1
exec "hi TabLine          guibg=" . s:color_b0 . " guifg=" . s:color_b3
exec "hi TabLineSel       guibg=" . s:color_b2 . " guifg=" . s:color_b4
exec "hi VertSplit        guibg=" . s:color_b1 . " guifg=" . s:color_b4
exec "hi StatusLine       guibg=" . s:color_b4 . " guifg=" . s:black    . " gui=bold"
exec "hi StatusLineNC     guibg=" . s:color_b2 . " guifg=" . s:black    . " gui=none"
exec "hi StatusLineTerm   guibg=" . s:color_g1 . " guifg=" . s:black    . " gui=bold"
exec "hi StatusLineTermNC guibg=" . s:color_g0 . " guifg=" . s:black    . " gui=none"
exec "hi LineNr           guibg=" . s:color_b2 . " guifg=" . s:color_b4 . " gui=bold"
exec "hi Visual           guibg=" . s:color_g0 . " guifg=" . s:color_g1 . " gui=bold"
exec "hi IncSearch        guibg=" . s:color_g1 . " guifg=" . s:color_g2
exec "hi Search           guibg=" . s:color_g0 . " guifg=" . s:color_g1
exec "hi Cursor           guibg=" . s:color_g1 . " guifg=" . s:color_g2 . " gui=bold"
exec "hi EndOfBuffer      guibg=" . s:black    . " guifg=" . s:color_r0 . " gui=bold"

exec "hi EasyMotionTarget guifg=" . s:red                               . " gui=bold"
exec "hi EasyMotionShade  guifg=" . s:color_b2
