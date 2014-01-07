" Ack-specific config options

if has('unix')
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
else
  let g:ackprg="ack -H --nocolor --nogroup --column"
  if executable("ag")
    let g:ackprg = 'ag --nogroup --nocolor --column'
  endif
endif

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg="ag --nocolor --nogroup --column"
endif

" Use <Leader>a to bring up an Ack search prompt.
noremap <Leader>a :Ack<Space>
