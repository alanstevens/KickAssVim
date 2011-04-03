""""""""""""""""""""""""""""""""""""""""
"" NERDCommenter-specific settings
""""""""""""""""""""""""""""""""""""""""

" keybindings
"map <Leader>c ,c<space>

map <Leader>c <plug>NERDCommenterToggle<CR>

if has("gui_macvim")
  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
endif
