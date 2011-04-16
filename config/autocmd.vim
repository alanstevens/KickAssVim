
if has("autocmd")
    " this group allows us to reload them in a running Vim instance.
    augroup AutoCommands
        au!
        " Vim Tip #1279 - Highlight current line in Insert Mode
        " http://www.vim.org/tips/tip.php?tip_id=1279
        autocmd InsertLeave * set nocul
        autocmd InsertEnter * set cul

        " Automatically cd into the directory that the file is in
        autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

        " Additional filetypes
        au BufRead,BufNewFile *.cls      setlocal filetype=tex
        au BufRead,BufNewFile sconstruct setlocal filetype=python
        au BufRead,BufNewFile *.rb       setlocal filetype=ruby
        au BufRead,BufNewFile *.xaml     setlocal filetype=xml

        " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
        au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

        " md, markdown, and mk are markdown and define buffer-local preview
        au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

        " make uses real tabs
        au FileType make set noexpandtab

        " make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
        au FileType python  set tabstop=4 textwidth=79

        function! s:setupMarkup()
            call s:setupWrapping()
            map <buffer> <Leader>p :Mm <CR>
        endfunction

        au BufRead,BufNewFile *.txt call s:setupWrapping()

        function! s:setupWrapping()
            set wrap
            set wm=2
            set textwidth=72
        endfunction

        " Stop annoying me every time I have a file open in two different vim sessions.
        " 'e' is "Edit Anyway" in this circumstance. Other options you could use here:
        " 'q' - quit.
        " 'o' - open the file in read-only mode.
        " 'r' - recover the changes.
        autocmd  SwapExists  *  :let v:swapchoice = 'e'

        "Remember last location in file
        "au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        "            \| exe "normal g'\"" | endif

        "jump to last cursor position when opening a file
        "dont do it when writing a commit log entry
        "autocmd BufReadPost * call SetCursorPosition()

        "function! SetCursorPosition()
        "    if &filetype !~ 'commit\c'
        "        if line("'\"") > 0 && line("'\"") <= line("$")
        "            exe "normal! g`\""
        "            normal! zz
        "        endif
        "    end
        "endfunction

        " Automatically restore cursor position when possible
        "autocmd BufReadPost *
        "            \ if line("'\"") > 1 && line("'\"") <= line("$") |
        "            \ exe "normal! g`\"" |
        "            \ endif

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
        function! StatuslineCurrentHighlight()
            let name = synIDattr(synID(line('.'),col('.'),1),'name')
            if name == ''
                return ''
            else
                return '[' . name . ']'
            endif
        endfunction

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
