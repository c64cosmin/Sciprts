set tabstop=4
set expandtab
set ff=unix
set encoding=utf-8
"set novisualbell
set belloff=all

if has("gui_running")
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
call vundle#end()
filetype plugin indent on

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

set guioptions=""

colorscheme hypermild
highlight Pmenu guibg=#101020 guifg=#404080
highlight PmenuSel guibg=#404080 guifg=#70a0f0
highlight EasyMotionTarget guifg=#ff0000
highlight EasyMotionShade guifg=#333333
highlight TabLineFill guibg=#101020 guifg=#202040
highlight TabLine guibg=#101020 guifg=#6060a0
highlight TabLineSel guibg=#404080 guifg=#70a0f0
highlight VertSplit guibg=#202040 guifg=#70a0f0

source ~/.vim/scripts/zoom.vim
endif
