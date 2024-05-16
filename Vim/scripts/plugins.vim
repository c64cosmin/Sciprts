if has('nvim')
    set rtp+='~/.local/share/nvim/site/plugged'
    call plug#begin('~/.local/share/nvim/site/plugged')
else
    if has('win32')
        set rtp+='C:\Users\c64cosmin\.vim\bundle'
    else
        set rtp+='~/.vim/bundle'
    endif
    call plug#begin('~/.vim/bundle')
endif

Plug 'tikhomirov/vim-glsl'
Plug 'kshenoy/vim-signature'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier'
Plug 'alx741/vim-rustfmt'
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

if has("win32")
    " PlugUpdate
    command! MyPlugUpdate   :set shell=cmd.exe shellcmdflag=/c noshellslash guioptions-=! <bar> noau PlugUpdate
    " PlugInstall
    command! MyPlugInstall  :set shell=cmd.exe shellcmdflag=/c noshellslash guioptions-=! <bar> noau PlugInstall
    " PlugClean
    command! MyPlugClean    :set shell=cmd.exe shellcmdflag=/c noshellslash guioptions-=! <bar> noau PlugClean
endif

filetype plugin indent on
