set rtp+=~/.vim/bundle/vim-plug
call plug#begin('~/.vim/bundle')

Plug 'tikhomirov/vim-glsl'
Plug 'kshenoy/vim-signature'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier'
if !&diff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'ycm-core/YouCompleteMe'
endif

call plug#end()
filetype plugin indent on
