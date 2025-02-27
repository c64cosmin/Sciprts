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
Plug 'alx741/vim-rustfmt'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'c64cosmin/harpwn'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"remove :W from fzf.vim
command! W exec ':w'
if !&diff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

if has('nvim')
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
endif

call plug#end()
filetype plugin indent on
