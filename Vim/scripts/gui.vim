if has("gui_running")
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
call vundle#end()
filetype plugin indent on

let g:ycm_confirm_extra_conf = 0
let g:ycm_auto_trigger = 1

nmap <Leader>d :YcmCompleter GoToDeclaration<CR>
nmap <Leader>f :YcmCompleter GoToDefinition<CR>
nmap <Leader>i :YcmCompleter GoToInclude<CR>
nmap <Leader>r :YcmCompleter GoToReferences<CR>

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

nmap s <Plug>(easymotion-overwin-f2)
nmap S <Plug>(easymotion-bd-jk)

set guioptions=""
let g:c64_guifontstring="Liberation_Mono"

source ~/.vim/scripts/colors.vim
source ~/.vim/scripts/zoom.vim
endif
