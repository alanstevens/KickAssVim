" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"
" CtrlP OS-X Menu remapping
if has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
endif
