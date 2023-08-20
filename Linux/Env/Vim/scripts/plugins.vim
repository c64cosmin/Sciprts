set rtp+=~/.vim/bundle/vim-plug
if has('nvim')
	call plug#begin('~/.local/share/nvim/site/plugged')
else
	call plug#begin('~/.vim/bundle')
endif

Plug 'tikhomirov/vim-glsl'
Plug 'kshenoy/vim-signature'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
if !&diff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()
filetype plugin indent on
