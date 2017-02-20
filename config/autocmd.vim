
if has("autocmd")
  " Some file types should wrap their text
  function! s:setupWrapping()
    set wrap
    set linebreak
    set textwidth=84
    set nolist
  endfunction

  " this group allows us to reload them in a running Vim instance.
  augroup AutoCommands
    au!
    " Vim Tip #1279 - Highlight current line in Insert Mode
    " http://www.vim.org/tips/tip.php?tip_id=1279
    " autocmd InsertLeave * set nocul
    " autocmd InsertEnter * set cul

    " Thorfile, Rakefile, Vagrantfile, and Gemfile are Ruby
    " au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

    " hb is handlebars
    " au BufNewFile,BufRead *.hb set ai filetype=handlebars

    " hbs is handlebars
    " au BufNewFile,BufRead *.hbs set ai filetype=handlebars

    " JSON is JS
    " Treat JSON files like JavaScript
    " au BufNewFile,BufRead *.json set ft=javascript
    " au BufNewFile,BufRead *.json set ai filetype=javascript
    " au BufRead,BufNewFile *.js syntax=enable

    " Automatically resize splits when resizing window
    autocmd VimResized * wincmd =

    " Automatically cd into the directory that the file is in
    " autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
    " set autochdir
    " autocmd BufEnter * lcd %:p:h
    " autocmd BufEnter * silent! lcd %:p:h

    " Additional filetypes
    " au BufRead,BufNewFile *.cls      setlocal filetype=tex
    " au BufRead,BufNewFile sconstruct setlocal filetype=python
    " au BufRead,BufNewFile *.xaml     setlocal filetype=xml

    " Set the Ruby filetype for a number of common Ruby files without .rb
    " au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby

    " Markdown syntax highlighting
    " autocmd BufNewFile,BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    " autocmd BufNewFile,BufRead *.md set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    " autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown

    " make uses real tabs
    " au FileType make setlocal noexpandtab

    " make Python follow PEP8 for whitespace ( http://www.python.org/dev/peps/pep-0008/ )
    " au FileType python setlocal softtabstop=4 tabstop=4 shiftwidth=4

    " au BufRead,BufNewFile *.txt call s:setupWrapping()

    " au BufNewFile,BufRead *.bas set ft=vb
    " au BufNewFile,BufRead *.cls set ft=vb
    " au BufNewFile,BufRead *.frm set ft=vb

    " Remember last location in file, but not for commit messages.
    " see :help last-position-jump
    " au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    "   \| exe "normal! g`\"" | endif

    " remember last position in file
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    " Restore cursor position to where it was before
    autocmd BufReadPost *
          \ if expand("<afile>:p:h") !=? $TEMP |
          \   if line("'\"") > 1 && line("'\"") <= line("$") |
          \     let JumpCursorOnEdit_foo = line("'\"") |
          \     let b:doopenfold = 1 |
          \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
          \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
          \        let b:doopenfold = 2 |
          \     endif |
          \     exe JumpCursorOnEdit_foo |
          \   endif |
          \ endif

    " Need to postpone using "zv" until after reading the modelines.
    autocmd BufWinEnter *
          \ if exists("b:doopenfold") |
          \   exe "normal zv" |
          \   if(b:doopenfold > 1) |
          \       exe  "+".1 |
          \   endif |
          \   unlet b:doopenfold |
          \ endif

    " Remove any trailing whitespace in the file
    autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

    " Vim Tip #565: Never see ^M and pesky trailing spaces again
    " Good to avoid flames in some open source circles
    autocmd BufRead * silent! %s/[\r \t]\+$//

    "recalculate the trailing whitespace warning when idle, and after saving
    "autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

    "recalculate the tab warning flag when idle and after writing
    autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

    "recalculate the long line warning when idle and after saving
    autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

    "return '[\s]' if trailing white space is detected
    "return '' otherwise
    function! StatuslineTrailingSpaceWarning()
      if !exists("b:statusline_trailing_space_warning")
        if search('\s\+$', 'nw') != 0
          let b:statusline_trailing_space_warning = '[\s]'
        else
          let b:statusline_trailing_space_warning = ''
        endif
      endif
      return b:statusline_trailing_space_warning
    endfunction


    "return the syntax highlight group under the cursor ''
    " function! StatuslineCurrentHighlight()
    "   let name = synIDattr(synID(line('.'),col('.'),1),'name')
    "   if name == ''
    "     return ''
    "   else
    "     return '[' . name . ']'
    "   endif
    " endfunction

    "return '[&et]' if &et is set wrong
    "return '[mixed-indenting]' if spaces and tabs are used to indent
    "return an empty string if everything is fine
    function! StatuslineTabWarning()
      if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
          let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
          let b:statusline_tab_warning = '[&et]'
        else
          let b:statusline_tab_warning = ''
        endif
      endif
      return b:statusline_tab_warning
    endfunction

    "return a warning for "long lines" where "long" is either &textwidth or 80 (if
    "no &textwidth is set)
    "
    "return '' if no long lines
    "return '[#x,my,$z] if long lines are found, were x is the number of long
    "lines, y is the median length of the long lines and z is the length of the
    "longest line
    function! StatuslineLongLineWarning()
      if !exists("b:statusline_long_line_warning")
        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
          let b:statusline_long_line_warning = "[" .
                \ '#' . len(long_line_lens) . "," .
                \ 'm' . s:Median(long_line_lens) . "," .
                \ '$' . max(long_line_lens) . "]"
        else
          let b:statusline_long_line_warning = ""
        endif
      endif
      return b:statusline_long_line_warning
    endfunction

    "return a list containing the lengths of the long lines in this buffer
    function! s:LongLines()
      let threshold = (&tw ? &tw : 80)
      let spaces = repeat(" ", &ts)

      let long_line_lens = []

      let i = 1
      while i <= line("$")
        let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
        if len > threshold
          call add(long_line_lens, len)
        endif
        let i += 1
      endwhile

      return long_line_lens
    endfunction

    "find the median of the given array of numbers
    function! s:Median(nums)
      let nums = sort(a:nums)
      let l = len(nums)

      if l % 2 == 1
        let i = (l-1) / 2
        return nums[i]
      else
        return (nums[l/2] + nums[(l/2)-1]) / 2
      endif
    endfunction
  augroup END
endif
