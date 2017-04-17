" NERDTree-specific settings.
noremap <F2> :NERDTreeTabsToggle<CR>
inoremap <F2> <ESC>:NERDTreeTabsToggle<cr>i

" autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeCWD | wincmd p | endif

let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
" let NERDTree change my working directory if its root changes.
let NERDTreeChDirMode=2
" show hidden files
" use I to show/hide hidden files and directories
let NERDTreeShowHidden=1

" Don't auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 0
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1
" find currently opened file and select it
noremap <c-F2> :NERDTreeTabsFind<CR>
" Automatically find and select currently opened file in NERDTree.
let g:nerdtree_tabs_autofind = 1

 map <leader>f :NERDTreeFind<cr>

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

autocmd FocusGained * call s:UpdateNERDTree()

" NERDTree utility function
function! s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction
