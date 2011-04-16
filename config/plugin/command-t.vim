""""""""""""""""""""""""""""""""""""""""
"" Command-T settings
""""""""""""""""""""""""""""""""""""""""

" no need to explicitly define keybinding, Command-T sets <Leader>t binding by
" default

" Always display and search dotfiles/dotdirectories
let g:CommandTAlwaysShowDotFiles = 1
let g:CommandTScanDotDirectores = 1

" Show the match window at the top of the screen rather than the bottom
let g:CommandTMatchWindowAtTop = 1

"map to CommandT TextMate style finder
nnoremap <leader>t :CommandT<CR>

"Command-T configuration
"let g:CommandTMaxHeight=10
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowAtTop=1

if has("gui_macvim")
    " Command-T for CommandT
    macmenu &File.New\ Tab key=<D-T>
    map <D-t> :CommandT<CR>
    imap <D-t> <Esc>:CommandT<CR>
endif
