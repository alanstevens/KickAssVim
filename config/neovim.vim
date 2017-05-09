let $NVIM_TUI_ENABLE_TRUE_COLOR=0
set termguicolors
set wildignorecase " wasn't needed in vim


" Neovim
if has('nvim')
    set termguicolors
    set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
endif


" enable narrow cursor in insert mode:
if has('nvim')
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
endif

" mappings for the neovim terminal
"To map <Esc> to exit terminal mode:
if has('nvim')
    :tnoremap <Esc> <C-\><C-n>
endif
