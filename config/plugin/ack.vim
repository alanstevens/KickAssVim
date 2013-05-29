
if has('unix')
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
else
  " let g:ackprg="ack -H --nocolor --nogroup --column"
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg="ag --nocolor --nogroup --column"
endif

" Use <Leader>a to bring up an Ack search prompt.
map <Leader>a :Ack<Space>

if has("gui_macvim")
  " Command-Shift-F for Ack
  map <D-F> :Ack<space>
endif
