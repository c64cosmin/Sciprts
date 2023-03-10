set updatetime=300
set signcolumn=yes
"tab trigger
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()
" GoTo code navigation.
nmap <Leader>yy :CocRestart<CR>
nmap <Leader>yf <Plug>(coc-definition)
nmap <Leader>yt <Plug>(coc-type-definition)
nmap <Leader>yd <Plug>(coc-implementation)
nmap <Leader>yr <Plug>(coc-references)
nmap <leader>yn <Plug>(coc-rename)
nmap <leader>yx <Plug>(coc-fix-current)
nnoremap <Leader>yt :call ShowDocumentation()<CR>
" Show all diagnostics.
nnoremap <Leader>ye  :<C-u>CocList diagnostics<cr>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  endif
endfunction
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
