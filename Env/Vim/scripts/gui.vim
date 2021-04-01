if has("gui_running")
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
call vundle#end()
filetype plugin indent on

let g:ycm_confirm_extra_conf = 0
let g:ycm_warning_symbol = "!!"
"let g:ycm_auto_trigger = 1

nmap <Leader>yd :YcmCompleter GoToDeclaration<CR>
nmap <Leader>yf :YcmCompleter GoToDefinition<CR>
nmap <Leader>yi :YcmCompleter GoToInclude<CR>
nmap <Leader>yr :YcmCompleter GoToReferences<CR>
nmap <Leader>yy :YcmRestartServer<CR>
nmap <leader>yt <plug>(YCMHover)
nmap <Leader>wd :vsplit<CR><C-w>w:YcmCompleter GoToDeclaration<CR>
nmap <Leader>wf :vsplit<CR><C-w>w:YcmCompleter GoToDefinition<CR>
nmap <Leader>wi :vsplit<CR><C-w>w:YcmCompleter GoToInclude<CR>
nmap <Leader>sd  :split<CR><C-w>w:YcmCompleter GoToDeclaration<CR>
nmap <Leader>sf  :split<CR><C-w>w:YcmCompleter GoToDefinition<CR>
nmap <Leader>si  :split<CR><C-w>w:YcmCompleter GoToInclude<CR>

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

nmap s <Plug>(easymotion-overwin-f2)
nmap S <Plug>(easymotion-bd-jk)

set guioptions=""
let g:c64_guifontstring="Liberation_Mono"

source ~/.vim/scripts/zoom.vim
endif

source ~/.vim/scripts/colors.vim
