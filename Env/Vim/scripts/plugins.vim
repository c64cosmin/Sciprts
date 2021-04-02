set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
if has("gui_running")
Plugin 'ycm-core/YouCompleteMe'
endif
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'kshenoy/vim-signature'
call vundle#end()
filetype plugin indent on
