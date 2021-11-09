"MIT License
"
"Copyright (c) 2017 Chris Hung
"
"Permission is hereby granted, free of charge, to any person obtaining a copy
"of this software and associated documentation files (the "Software"), to deal
"in the Software without restriction, including without limitation the rights
"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"copies of the Software, and to permit persons to whom the Software is
"furnished to do so, subject to the following conditions:
"
"The above copyright notice and this permission notice shall be included in all
"copies or substantial portions of the Software.
"
"THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
"SOFTWARE.

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'hypermildmine'
set background=dark


" Helper function to set up highlight executions
function! s:hi(group, foreground, background, fontStyle)
  exec  "highlight "  . a:group
    \ . " guifg="     . a:foreground
    \ . " guibg="     . a:background
    \ . " gui="       . a:fontStyle
endfunction


" Text style
let s:italic      =   'italic'
let s:bold        =   'bold'
let s:underline   =   'underline'
let s:none        =   'NONE'


" Background
let s:bg = '#000000'


" Colors base
let s:primary       =   '#20a040'
let s:secondary     =   '#bdbb5b'

let s:type          =   s:secondary
let s:source        =   '#a0a0a0'
let s:keyword       =   '#c7c400'
let s:structure     =   '#ff0000'
let s:scalar        =   '#e05030'
let s:string        =   '#6e81b5'

let s:function      =   '#b040d0'

let s:comment       =   '#334f33'
let s:preproc       =   '#44aa44'

let s:error         =   '#ff0000'
let s:errorbg       =   '#550000'

" Syntax highlighting groups
call s:hi('Comment', s:comment, s:bg, s:none)
call s:hi('Constant', s:primary, s:bg, s:none)
call s:hi('String', s:string, s:bg, s:none)
call s:hi('Character', s:string, s:bg, s:none)
call s:hi('Number', s:scalar, s:bg, s:bold)
call s:hi('Boolean', s:scalar, s:bg, s:none)
call s:hi('Float', s:scalar, s:bg, s:bold)

call s:hi('Identifier', s:primary, s:bg, s:none)
call s:hi('Function', s:function, s:bg, s:bold)

call s:hi('Statement', s:keyword, s:bg, s:bold)
call s:hi('Conditional', s:keyword, s:bg, s:none)
call s:hi('Repeat', s:keyword, s:bg, s:none)
call s:hi('Label', s:primary, s:bg, s:none)
call s:hi('Operator', s:source, s:bg, s:none)
call s:hi('Keyword', s:primary, s:bg, s:none)
call s:hi('Exception', s:primary, s:bg, s:none)

call s:hi('PreProc', s:preproc, s:bg, s:none)
call s:hi('Include', s:preproc, s:bg, s:none)
call s:hi('Define', s:preproc, s:bg, s:none)
call s:hi('Macro', s:preproc, s:bg, s:none)
call s:hi('PreCondit', s:preproc, s:bg, s:none)

call s:hi('Type', s:type, s:bg, s:bold)
call s:hi('StorageClass', s:primary, s:bg, s:none)
call s:hi('Structure', s:primary, s:bg, s:none)
call s:hi('Typedef', s:primary, s:bg, s:none)

call s:hi('Special', s:source, s:bg, s:none)
call s:hi('SpecialChar', s:primary, s:bg, s:none)
call s:hi('Delimiter', s:source, s:bg, s:none)
call s:hi('SpecialComment', s:comment, s:bg, s:none)
call s:hi('Debug', s:primary, s:bg, s:none)
call s:hi('Underlined', s:source, s:bg, s:underline)
call s:hi('Todo', s:primary, s:bg, s:none)
call s:hi('Error', s:error, s:errorbg, s:underline)
call s:hi('ErrorMsg', s:error, s:errorbg, s:bold)
call s:hi('Question', s:string, s:bg, s:none)
call s:hi('WarningMsg', s:primary, s:none, s:none)
call s:hi('Search', s:bg, s:source, s:none)

call s:hi('Directory', s:string, s:bg, s:none)
call s:hi('CursorLine', s:none, '#1a1a1a', s:none)
call s:hi('CursorColumn', s:none, '#333333', s:none)
call s:hi('MatchParen', s:source, '#333333', s:none)
call s:hi('ColorColumn', s:source, '#1a1a1a', s:none)


" Interface highlighting
call s:hi('Normal', s:source, s:bg, s:none)
call s:hi('Visual', s:none, '#305030', s:none)
call s:hi('Cursor', '#ff0000', s:bg, s:none)
call s:hi('iCursor', s:none, s:bg, s:none)
call s:hi('LineNr', '#495162', s:bg, s:none)
call s:hi('NonText', s:comment, s:bg, s:none)
call s:hi('CursorLineNr', s:source, s:bg, s:none)
call s:hi('VertSplit', '#1a1a1a', s:bg, s:none)
call s:hi('Title', s:scalar, s:bg, s:none)
call s:hi('Pmenu', s:source, '#1a1a1a', s:none)
call s:hi('PmenuSel', s:bg, s:source, s:none)


" Git Gutter
call s:hi('GitGutterAdd', s:source, s:bg, s:none)
call s:hi('GitGutterChange', s:source, s:bg, s:none)
call s:hi('GitGutterDelete', s:source, s:bg, s:none)
call s:hi('GitGutterChangeDelete', s:source, s:bg, s:none)
call s:hi('SignColumn', s:source, s:bg, s:none)


" Python syntax highlighting
call s:hi('pythonBuiltin', s:scalar, s:bg, s:none)
call s:hi('pythonDecoratorName', s:scalar, s:bg, s:none)
call s:hi('pythonDecorator', s:scalar, s:bg, s:none)
call s:hi('pythonOperator', s:primary, s:bg, s:none)
call s:hi('jinjaTagDelim', s:primary, s:bg, s:none)
call s:hi('jinjaVarBlock', s:primary, s:bg, s:none)
call s:hi('jinjaStatement', s:primary, s:bg, s:none)
call s:hi('jinjaBlockName', s:source, s:bg, s:none)
call s:hi('jinjaVariable', s:source, s:bg, s:none)
call s:hi('jinjaString', s:string, s:bg, s:none)

" PHP
call s:hi('phpDefine', s:primary, s:bg, s:none)
call s:hi('phpIdentifier', s:source, s:bg, s:none)
call s:hi('bladeKeyword', s:primary, s:bg, s:none)
call s:hi('bladeDelimiter', s:source, s:bg, s:none)

" Javascript
call s:hi('jsNull', s:scalar, s:bg, s:none)
call s:hi('jsUndefined', s:scalar, s:bg, s:none)
call s:hi('jsFunction', s:primary, s:bg, s:none)
call s:hi('jsFuncName', "#52adf2", s:bg, s:none)
call s:hi('jsArrowFunction', s:source, s:bg, s:none)
call s:hi('jsonKeyword', s:source, s:bg, s:none)
call s:hi('javaScriptBraces', s:source, s:bg, s:none)

" JSX (MaxMEllon/vim-jsx-pretty)
call s:hi('jsxTagName', '#ef596f', s:bg, s:none)
call s:hi('jsxAttrib', s:scalar, s:bg, s:none)
call s:hi('jsxPunct', '#aab1c0', s:bg, s:none)
call s:hi('jsxCloseString', '#aab1c0', s:bg, s:none)
call s:hi('jsxComponentName', '#e5c07b', s:bg, s:none)

" js (yuezk/vim-js)
call s:hi('jsArrow', s:source, s:bg, s:none)
call s:hi('jsVariableType', s:primary, s:bg, s:none)

" Java
call s:hi('javaAnnotation', s:scalar, s:bg, s:none)

" Typescript
call s:hi('typescriptBraces', s:source, s:bg, s:none)
call s:hi('typescriptDecorator', s:scalar, s:bg, s:none)
call s:hi('typescriptImport', s:primary, s:bg, s:none)
call s:hi('typescriptExport', s:primary, s:bg, s:none)

" HTML
call s:hi('htmlTagName', '#ef596f', s:bg, s:none)
call s:hi('htmlTag', '#aab1c0', s:bg, s:none)
call s:hi('Identifier', '#aab1c0', s:bg, s:none)
call s:hi('htmlArg', s:scalar, s:bg, s:none)

" CSS
call s:hi('cssProp', s:source, s:bg, s:none)
call s:hi('cssBraces', s:source, s:bg, s:none)

" Ruby
call s:hi('rubyModule', s:primary, s:bg, s:none)
call s:hi('rubyDefine', s:primary, s:bg, s:none)
call s:hi('rubyClass', s:primary, s:bg, s:none)
call s:hi('rubyFunction', s:source, s:bg, s:none)

" Clojure
call s:hi('clojureSpecial', s:primary, s:bg, s:none)
call s:hi('clojureDefine', s:primary, s:bg, s:none)
call s:hi('clojureKeyword', s:source, s:bg, s:none)

" Rust
call s:hi('rustModPath', '#e5c07b', s:bg, s:none)
call s:hi('rustEnumVariant', '#e5c07b', s:bg, s:none)"

" Vimscript syntax highlighting
call s:hi('vimOption', s:source, s:bg, s:none)


" NERDTree
call s:hi('NERDTreeClosable', s:string, s:bg, s:none)
call s:hi('NERDTreeOpenable', s:string, s:bg, s:none)

" Hacks
hi CursorLine cterm=none
hi Identifier cterm=none

if has("gui_win32")
    call s:hi('Cursor', s:bg, s:string, s:none)
endif

