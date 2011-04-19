if has("gui_macvim")
  " Command-Shift-F for Ack
  map <D-F> :Ack<space>
endif

if has('unix')
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
else
    let g:ackprg="ack -H --nocolor --nogroup --column"
endif

" Use <Leader>A to bring up an Ack search prompt.
map <Leader>A :Ack<Space>
