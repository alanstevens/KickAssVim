" " GUI-specific settings
" " HAS - I suspect that most of this is unnecessary
"
" " only execute the contents of this file if the GUI is in use.
" if has("gui_running")
"
"   set lines=60
"   set columns=180
"   "
"   " don't blink the cursor
"   set guicursor=a:blinkon0
"
"   " Remove Toolbar
"   set guioptions-=T
"
"   " always show tabs in gvim, but not vim
"   set showtabline=2
"
"   " set GUI File Open use current directory
"   set browsedir=buffer
"
"   " Turn on the horizontal scrollbar
"   set guioptions+=b
"
"   " scroll the window when we get near the edge
"   set scrolloff=8      "Start scrolling when we're 8 lines away from margins, set to 1 in sensible.vim
"   set sidescrolloff=15 "set to 5 in sensible.vim
"   set sidescroll=1
"
"   if has("gui_gnome")
"     set term=gnome-256color
"     set guifont=Monospace\ 16
"   endif
"
"   if has("gui_mac") || has("gui_macvim")
"
"     " MacVIM shift+arrow-keys behavior (required in .vimrc)
"     let macvim_hig_shift_movement = 1
"
"     " make Mac's Option key behave as the Meta key
"     set invmmta
"
"     try
"       set transparency=30
"     catch
"     endtry
"   endif
"
   if has("gui_win32") || has("gui_win32s")
     set guioptions-=T  "remove toolbar
     set showtabline=2  "always show the tab bar
      "set encoding=utf-8 " set in sensible.vim
     " For Win32 GUI, remove 't' flag from 'guioptions': no tearoff menu entries
     let &guioptions = substitute(&guioptions, "t", "", "g")
   endif
"
"   "set guitablabel=%M%t
"   set guitablabel=%{GuiTabLabel()}
"   set guitabtooltip=%{GuiTabToolTip()}
"
"   " set up tab labels with tab number, buffer name, number of windows
"   function! GuiTabLabel()
"     let label = ''
"     let bufnrlist = tabpagebuflist(v:lnum)
"
"     " Add '+' if one of the buffers in the tab page is modified
"     for bufnr in bufnrlist
"       if getbufvar(bufnr, "&modified")
"         let label = '+'
"         break
"       endif
"     endfor
"
"     " Append the tab number
"     let label .= v:lnum.': '
"
"     " Append the buffer name
"     let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
"     if name == ''
"       " give a name to no-name documents
"       if &buftype=='quickfix'
"         let name = '[Quickfix List]'
"       else
"         let name = '[No Name]'
"       endif
"     else
"       " get only the file name
"       let name = fnamemodify(name,":t")
"     endif
"     let label .= name
"
"     " Append the number of windows in the tab page
"     let wincount = tabpagewinnr(v:lnum, '$')
"     return label . '  [' . wincount . ']'
"   endfunction
"
"   " set up tab tooltips with every buffer name
"   function! GuiTabToolTip()
"     let tip = ''
"     let bufnrlist = tabpagebuflist(v:lnum)
"
"     for bufnr in bufnrlist
"       " separate buffer entries
"       if tip!=''
"         let tip .= " \n "
"       endif
"
"       " Add name of buffer
"       let name=bufname(bufnr)
"       if name == ''
"         " give a name to no name documents
"         if getbufvar(bufnr,'&buftype')=='quickfix'
"           let name = '[Quickfix List]'
"         else
"           let name = '[No Name]'
"         endif
"       endif
"       let tip.=name
"
"       " add modified/modifiable flags
"       if getbufvar(bufnr, "&modified")
"         let tip .= ' [+]'
"       endif
"       if getbufvar(bufnr, "&modifiable")==0
"         let tip .= ' [-]'
"       endif
"     endfor
"
"     return tip
"   endfunction
" endif
