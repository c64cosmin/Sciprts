set rtp+=~/.vim/bundle/vim-plug
if has('nvim')
    call plug#begin('~/.local/share/nvim/site/plugged')
else
    call plug#begin('~/.vim/bundle')
endif

"Language types
Plug 'tikhomirov/vim-glsl'
Plug 'alx741/vim-rustfmt'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'kshenoy/vim-signature'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier'
Plug 'othree/html5.vim'

Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'c64cosmin/harpwn'

"fzf
if has("win32")
    Plug 'c64cosmin/fzf', { 'do': './install --all' }
    Plug 'c64cosmin/fzf.vim'
else
    Plug 'junegunn/fzf', { 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
endif
" Initialize configuration dictionary
let g:fzf_vim = {}
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

if has("win32")
    let g:fzf_vim_preview_bash = 'bash.exe'
endif

filetype plugin indent on
