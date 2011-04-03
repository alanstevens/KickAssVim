if has("gui_macvim")
  " Command-Shift-F for Ack
  map <D-F> :Ack<space>
endif

" Use <Leader>A to bring up an Ack search prompt.
map <Leader>A :Ack<Space>
