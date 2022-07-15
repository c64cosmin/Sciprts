set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
if !&diff
Plugin 'ycm-core/YouCompleteMe'
endif
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'udalov/kotlin-vim'
Plugin 'prettier/vim-prettier'
call vundle#end()
filetype plugin indent on
