" tagbar-specific settings

map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Toggle the tagbar window visibility
nnoremap <silent> <F7> :TagbarToggle<CR>
