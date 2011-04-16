""""""""""""""""""""""""""""""""""""""""
"" This file deals with all settings
"" related to searching.
""""""""""""""""""""""""""""""""""""""""

set hlsearch    " highlight search terms
set incsearch   " search incrementally

set ignorecase  " ignore case in searches...
set smartcase   " ...but not really. Case sensitive if capitals are included.

"visual search mappings
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
