" Ack-specific config options

" if has('unix')
"   let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" else
"   let g:ackprg="ack -H --nocolor --nogroup --column"
"   if executable("ag")
"     let g:ackprg = 'ag --nogroup --nocolor --column'
"   endif
" endif
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" if executable("ag")
"   set grepprg=ag\ --nogroup\ --nocolor
"   let g:ackprg="ag --nocolor --nogroup --column"
" endif
cnoreabbrev Ack Ack!
" Use <Leader>a to bring up an Ack search prompt.
" '!' means don't open the first result by default.
nnoremap <Leader>a :Ack!<Space>

" The quickfix results window is augmented with these convenience mappings:
"
" ?    a quick summary of these keys, repeat to close
" o    to open (same as Enter)
" O    to open and close the quickfix window
" go   to preview file, open but maintain focus on ack.vim results
" t    to open in new tab
" T    to open in new tab without moving to it
" h    to open in horizontal split
" H    to open in horizontal split, keeping focus on the results
" v    to open in vertical split
" gv   to open in vertical split, keeping focus on the results
" q    to close the quickfix window
"
"FAQ: I don't want to jump to the first result automatically.

" Use :Ack!, with bang. If you want this behavior most of the time, you might like an abbreviation or mapping in your personal config, something like these:
"
" cnoreabbrev Ack Ack!
" nnoremap <Leader>a :Ack!<Space>
" Most of the :[L]Ack* commands support this.
