" syntastic config from: http://www.blog.bdauria.com/?p=692
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"==================================================================================
" Create es6 import declaration. Place the cursor over the symbol
" for which you’d like the file imported, and run :TsuImport
nnoremap <m-i> :TsuImport
inoremap <m-i> <esc>:TsuImport<cr>i

" navigate to Symbol's definition, place the cursor on the symbol and run
" forward: <C-]> :TsuDefinition
" back: <C-t> :TsuGoBack
nnoremap <m-g> :TsuDefinition
nnoremap <m-b> :TsuGoBack
inoremap <m-g> <esc>:TsuDefinition<cr>i
inoremap <m-b> <esc>:TsuGoBack<cr>i


" display the references to a symbol in the QuickFix window.
" use the :TsuReferences command:
" <C-^>
nnoremap <m-d> :TsuReferences

" Use the command :TsuRenameSymbol to rename the identifier under the cursor.
" This feature does not have a default key mapping. You can use this example:
" this conflicts with my default keymap for <leader>e to edit a file
" autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)

" If you want to rename identifiers including in comments, you can use :TsuRenameSymbolC command.
autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)

if has("gui_running")
    " To display a tooltip for the symbol under the mouse cursor.
    set ballooneval
    autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
else
    " ballonexpr is not available in the terminal. Use the tooltip function tsuquyomi#hint().
    autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
endif
"
" Call :TsuSearch {keyword} to get a list of locations which contain the keyword.
" This command searches the keyword from opened or referenced files in your project.

" Show project information(a source of unite)
" :Unite tsproject

" Show outline of the current buffer:
" :Unite outline
"
" Disable default mappings:
" let g:tsuquyomi_disable_default_mappings = 1
