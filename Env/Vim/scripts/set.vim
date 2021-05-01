set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set scrolloff=8
set ff=unix
set encoding=utf-8
set belloff=all
set novisualbell
set foldmethod=indent
set foldlevel=100
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

let g:html_use_css=1

"let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_silent = 1
let g:netrw_errorlvl = 2

"EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

if has("gui_running")
let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1
let g:ycm_warning_symbol = "!!"
"let g:ycm_auto_trigger = 1
endif
