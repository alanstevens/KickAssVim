if has("gui_macvim")
  " Command-Shift-F for Ack
  map <D-F> :Ack<space>
endif

let g:ackprg="perl ack.pl -H --nocolor --nogroup --column"

" Use <Leader>A to bring up an Ack search prompt.
map <Leader>A :Ack<Space>
