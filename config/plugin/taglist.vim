let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Process_File_Always = 1
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd = 'ctags'

let Tlist_Enable_Fold_Column = 0
let Tlist_Use_SingleClick = 1
let Tlist_Inc_Winwidth = 0

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Map a key to the TlistToggle command for easy access:
nnoremap <silent> <F7> :TlistToggle<CR>

" Open the TagList Plugin <F3>
nnoremap <silent> <F3> :Tlist<CR>
