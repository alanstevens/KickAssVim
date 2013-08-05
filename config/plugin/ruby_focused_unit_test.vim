
" Ruby focused unit test (wrapped in an if-loaded because it doesn't like
" being loaded twice)
if !exists(':RunRubyFocusedUnitTest')
  nmap <Leader>ra :wa<CR> :RunAllRubyTests<CR>
  nmap <Leader>rc :wa<CR> :RunRubyFocusedContext<CR>
  nmap <Leader>rf :wa<CR> :RunRubyFocusedUnitTest<CR>
  nmap <Leader>rl :wa<CR> :RunLastRubyTest<CR>
endif
