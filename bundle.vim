
call plug#begin('~/.vim/bundle')

" Colors
Plug 'wgibbs/vim-irblack'
Plug 'twerth/ir_black'
Plug 'croaky/vim-colors-github'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'vim-scripts/pyte'
Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'chriskempson/base16-vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'altercation/vim-colors-solarized'

" Plugins
Plug 'tpope/vim-sensible'                       " Defaults everyone can agree on
Plug 'tpope/vim-dispatch'                       " asynchronous build and test dispatcher
" Plug 'tpope/vim-fugitive'                     " a Git wrapper so awesome, it should be illegal
" Plug 'tpope/vim-surround'                     " quoting/parenthesizing made simple
" Plug 'tpope/vim-rsi'                          " Readline style insertion
" Plug 'tpope/vim-eunuch'                       " helpers for UNIX
" Plug 'tpope/vim-git'                          " Vim Git runtime files
" Plug 'tpope/vim-repeat'                       " enable repeating supported plugin maps with '.'
" Plug 'tpope/tpope/vim-ragtag'                 "  ghetto HTML/XML mappings
Plug 'pangloss/vim-javascript'                  " Vastly improved Javascript indentation and syntax support in Vim. provides syntax highlighting and improved indentation
Plug 'jelera/vim-javascript-syntax'             " Enhanced JavaScript Syntax for Vim
Plug 'othree/javascript-libraries-syntax.vim'   " Syntax file for JavaScript libraries.
Plug 'elzr/vim-json'                            " A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing.
Plug 'mmalecki/vim-node.js'                     " File type detect Plugin for vim which detects node.js shebang
Plug 'jimmyhchan/dustjs.vim'                    " dustjs template syntax highlighting and more for vim
" tern and ycm don't support typescript
" ======================================
" Plug 'ternjs/tern_for_vim'                      " provides Tern-based JavaScript editing support.  It will hook into omni completion to handle autocompletion
" Plug 'Valloric/YouCompleteMe'                   " a fast, as-you-type, fuzzy-search code completion engine
Plug 'mileszs/ack.vim'                          " like grep but better. Currently used with Ag, if available
Plug 'vim-airline/vim-airline'                  " lean & mean statusline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'           " https://github.com/vim-airline/vim-airline/wiki/Screenshots
Plug 'jeetsukumaran/vim-buffergator'            " list, select and switch between buffers.
Plug 'duff/vim-bufonly'                         " quickly close all other buffers
Plug 'scrooloose/syntastic'                     " syntax error checking
Plug 'scrooloose/nerdtree'                      " provides a file system tree view
Plug 'jistr/vim-nerdtree-tabs'                  " NERDTree and tabs together in Vim, painlessly
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra syntax and highlight for nerdtree files
Plug 'vim-scripts/tComment'                     " easy to use, file-type sensible comments for Vim. It can handle embedded syntax.
Plug 'sjl/vitality.vim'                         " Make Vim play nicely with iTerm 2 and tmux. Enables a thin cursor while in insert mode in console vim
Plug 'ctrlpvim/ctrlp.vim'                       " Full path fuzzy file, buffer, mru, tag, ... finder
Plug 'othree/html5.vim'                         " HTML5 omnicomplete and syntax
Plug 'Chiel92/vim-autoformat'                   " Provides easy code formatting in Vim by integrating existing code formatters.
Plug 'Raimondi/delimitMate'                     " provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'junegunn/vim-easy-align'                  " Makes those funny alignment issues trivial.
Plug 'jiangmiao/auto-pairs'                     " Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'Quramy/vim-js-pretty-template'            " highlights JavaScript's Template Strings in other FileType syntax rule
Plug 'jason0x43/vim-js-indent'                  " Vim indenter for standalone and embedded JavaScript
Plug 'ericpruitt/tmux.vim'                      " Vim syntax file for tmux configuration files
" ======================================
" Typescript/Angular stuff:
" ======================================
Plug 'burnettk/vim-angular'                     " Some niceties for using Vim with the AngularJS framework
Plug 'HerringtonDarkholme/yats.vim'             " The most advanced TypeScript Syntax Highlighting
Plug 'Shougo/vimproc.vim'                       " Interactive command execution in Vim. Prereq of tsuquyomi
Plug 'uramy/tsuquyomi'                          " A Vim plugin for TypeScript (depends on Shougo/vimproc.vim)
Plug 'vvakame/dtsm'                             " The .d.ts manager
Plug 'leafgarland/typescript-vim'               " Typescript syntax files for Vim
Plug 'angular-cli.vim'                          " a Vim Plugin for angular-cli
" =============================================
" Markdown plugins. Hard to know which is best.
" =============================================
" Plug 'mkitt/markdown-preview.vim'             " * opens an html file in the default app which is macvim for me. FAIL! * Preview markdown files in the browser from vim (requires redcarpet gem)
" Plug 'nelstrom/vim-markdown-preview'          " * Requires running an install.sh. Uses the default app (MacVim) * Preview markdown files in the browser from vim
" Plug 'maba/vim-markdown-preview'                " * uses default app as above * preview markdown documents in the browser from vim.
" Plug 'andrewferrier/vim-markdown-preview'     " preview markdown documents in the browser from vim
" Plug 'iamcco/markdown-preview.vim'            " Real-time markdown preview plugin for vim
Plug 'tpope/vim-markdown'                     " Vim Markdown runtime files
" Plug 'jtratner/vim-flavored-markdown'         " jtratner/vim-flavored-markdown
" Plug 'plasticboy/vim-markdown'                " Markdown Vim Mode
" Plug 'gabrielelana/vim-markdown'              " Markdown for Vim: a complete environment to create Markdown files with a syntax highlight that doesn't suck!
Plug 'suan/vim-instant-markdown'              " Instant Markdown previews from VIm!

" load this last
Plug 'ryanoasis/vim-devicons'                   " Adds file type glyphs/icons to many popular Vim Plugins such as: NERDTree, vim-airline, unite, vim-startify and many more
call plug#end()


"===========================================================================================================================
" Plug 'wookiehangover/jshint.vim'              " syntastic already leverages jshint  JSHint fork of jslint.vim
" Plug 'ramitos/jsctags'                        " jsctags generator using tern
" Plug 'majutsushi/tagbar'                      " displays a list of ctags in a sidebar
" Plug 'sjl/gundo.vim'                          " provides an undo graph window
" Plug 'Xuyuanp/nerdtree-git-Plugin'            " A Plugin of NERDTree showing git status flags.
" Plug 'tpope/vim-surround'                     " all about 'surroundings': parentheses, brackets, quotes, XML tags, and more.
" Plug 'tpope/vim-unimpaired'                   " pairs of handy bracket mappings
" Plug 'vim-scripts/YankRing.vim'               " provides a yank buffer history
" Plug 'vim-scripts/ZoomWin'                    " enables temporary full screen for a viewport
" Plug 'Lokaltog/vim-easymotion'                " Vim motions on speed!
" Plug 'PeterRincker/vim-argumentative'         " Allows you to change the order of arguments with ease.

" Plug 'vim-ruby/vim-ruby'
" Plug 'chrisbra/csv.vim'
" Plug Shougo/denite.nvim                     " like the fuzzy finder, but it is more generic. (for neovim)
" Plug 'helino/vim-json'
" Plug 'rking/ag.vim'                         " depricated
" Seems to be abandoned: Bundle 'walm/jshint.vim'
" Plug 'vim-scripts/ctags.vim'
" Plug 'vim-scripts/matchit.zip'
" Plug 'MarcWeber/vim-addon-mw-utils'         " (snipmate dependency) interpret a file by function and cache file automatically
" Plug 'danro/rename.vim'
" Plug 'tpope/vim-repeat'
" Plug 'airblade/vim-rooter'
" Plug 'godlygeek/tabular'                    " text filtering and alignment

" ' sh 'gem install bundle'
" ' sh 'bundle install'

" tpope Plugins
" ----------------------------
" Plug 'tpope/vim-abolish'                  " easily search for, substitute, and abbreviate multiple variants of a word
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-fireplace'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-leiningen'
" Plug 'tpope/vim-projectionist'
" Plug 'tpope/vim-ragtag'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-vinegar'

" Javascript Plugins
" http://oli.me.uk/2015/06/17/wrangling-javascript-with-vim/
" Olical/vim-enmasse – My own, allows you to edit your quickfix list and write the changes to their files. Like find and replace, but better.
" mhinz/vim-signify – Git info in the gutter.

" Plugins from https://github.com/Olical/dotfiles/blob/9c5f008620287bb495e56452123d6bff76bb4639/vim/.vim/Plugins.vim
" --------------------------------------
" Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'Keithbsmiley/tmux.vim'
" Plug 'SirVer/ultisnips'
" Plug 'Wolfy87/vim-expand'
" Plug 'Wolfy87/vim-syntax-expand'
" Plug 'adimit/prolog.vim'
" Plug 'aklt/plantuml-syntax'
" Plug 'andreimaxim/vim-io'
" Plug 'derekwyatt/vim-scala'
" Plug 'embear/vim-localvimrc'
" Plug 'guns/vim-clojure-highlight'
" Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-sexp'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/vim-asterisk'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'raymond-w-ko/vim-niji'
" Plug 'sevko/vim-nand2tetris-syntax'
" Plug 'terryma/vim-multiple-cursors'

" Plug 'tpope/vim-git'
" Plug 'nono/vim-handlebars'
" Plug 'itspriddle/vim-jquery'
" Plug 'groenewege/vim-less'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'vim-scripts/Arduino-syntax-file'
" Plug 'guns/vim-clojure-static'
" Plug 'kchmck/vim-coffee-script'
" Plug 'tpope/vim-cucumber'
" Plug 'elixir-lang/vim-elixir'
" Plug 'jnwhiteh/vim-golang'
" Plug 'tpope/vim-haml'
" Plug 'wlangstroth/vim-haskell'
" Plug 'juvenn/mustache.vim'
" Plug 'sunaku/vim-ruby-minitest'           " Vim highlighting & completion for MiniTest.
" Plug 'ecomba/vim-ruby-refactoring'      " Refactoring tool for Ruby in vim!
" Plug 'ajf/puppet-vim'
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-rake'
" Plug 'rosstimson/scala-vim-support'
" Plug 'timcharper/textile.vim'
" Plug 'slim-template/vim-slim'              " slim syntax highlighting for vim
" Plug 'nanki/treetop.vim'
" Plug 'jimenezrick/vimerl'

" Plug 'Townk/vim-autoclose'                " automatically closes quotes, parens, brackets, etc
" Plug 'bonsaiben/bootstrap-snippets'         " Twitter Bootstrap snippets for vim-snipmate
" Plug 'vim-scripts/bufexplorer.zip'
" Plug 'tpope/vim-bundler'                    " Lightweight support for Ruby's Bundler
" Plug 'vim-scripts/camelcasemotion'
" Plug 'vim-scripts/dbext.vim'
" Plug 'vim-scripts/greplace.vim'
" Plug 'henrik/vim-indexed-search'
" Plug 'hallettj/jslint.vim'
" REPOSITORY IS GONE Bundle 'tsaleh/vim-matchit'
" Plug 'ddollar/nerdcommenter'              " easy syntax appropriate commenting
" Plug 'greyblake/vim-preview'
" Plug 'tpope/vim-rbenv'
" Plug 'drewolson/ruby_focused_unit_test_vim' " run a focused ruby unit test in vim
" Plug 'vim-scripts/ruby-matchit'
" Plug 'csexton/rvm.vim'
" Plug 'vim-scripts/searchfold.vim'
" Plug 'vim-scripts/simplefold'
" Plug 'hallison/vim-ruby-sinatra'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'                   " additional snippits to use with snipmate
" Replaced by YouCompleteMe ' Bundle 'ervandew/supertab'                    " Perform all your vim insert mode completions with Tab
" Plug 'vim-scripts/TailMinusF'
" Plug 'kana/vim-textobj-user'
" Plug 'thinca/vim-textobj-comment'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'tomtom/tlib_vim'                      " (snipmate dependency) Some utility functions for VIM
" Plug 'SirVer/ultisnips'                   " code snipped engine. ships with some templates
" Plug 'Raimondi/vimoutliner'
" Plug 'skalnik/vim-vroom'                    " A vim Plugin for running your Ruby tests
" Plug 'mattn/zencoding-vim'

" Plugins used by Janus:
" Plug 'ap/vim-css-color'
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'rgarver/Kwbd.vim'
" Plug 'chrisbra/NrrwRgn'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'skalnik/vim-vroom'

" Plugins used by neo:
" Plug 'harleypig/vcscommand.vim'
" Plug 'vim-scripts/L9'
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'wavded/vim-stylus'
" Plug 'digitaltoad/vim-jade'
" Plug 'vim-scripts/VimClojure'
" Plug 'skammer/vim-css-color'
" Use Aaron Baker's Fork to add SASS/SCSS color highlighting
" Plug 'bakis2011/vim-css-color'

" Plugins used by spf13:
" Plug 'amirh/HTML-AutoCloseTag'            " Automatically closes HTML tags once you finish typing them.
" Plug 'hail2u/vim-css3-syntax'             " Add CSS3 syntax support to vim's built-in `syntax/css.vim`.
" Plug 'godlygeek/csapprox'                 " Make gvim-only colorschemes work transparently in terminal vim
" Plug 'briancollins/vim-jst'               " for highlighting and indenting JST/EJS syntax
" Plug 'spf13/PIV'                          " PHP Integration environment for Vim
" Plug 'arnaud-lb/vim-php-namespace'        " types 'use' statements for you
" Plug 'mattn/webapi-vim'
" Plug 'vim-scripts/restore_view.vim'       " automatically restoring file's cursor position and folding
" Plug 'myusuf3/numbers.vim'                " intelligently toggling line numbers between relative numbering (relativenumber) and absolute numbering (number)
" Plug 'airblade/vim-gitgutter'             " shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed.
" Plug 'vim-scripts/sessionman.vim'         " session manager

" Plugins used by yadr
" ' Ruby, Rails, Rake...
" Plug 'astashov/vim-ruby-debugger'
" Plug 'ecomba/vim-ruby-refactoring'
" Plug 'skwp/vim-ruby-conque'
" Plug 'tpope/vim-rvm'
" Plug 'vim-scripts/Specky'
" Plug 'ck3g/vim-change-hash-syntax'
"
" ' Html, Xml, Css, Markdown...
" Plug 'aaronjensen/vim-sass-status'
" Plug 'claco/jasmine.vim'
" Plug 'digitaltoad/vim-jade'
" Plug 'kogakure/vim-sparkup'
" Plug 'skwp/vim-html-escape'
" Plug 'wavded/vim-stylus'
"
" ' Git related...
" Plug 'gregsexton/gitv'
" Plug 'mattn/gist-vim'
" Plug 'skwp/vim-git-grep-rails-partial'
" Plug 'tjennings/git-grep-vim'
"
" ' General text editing improvements...
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'Shougo/neocomplcache'
" Plug 'briandoll/change-inside-surroundings.vim'
" Plug 'nelstrom/vim-visual-star-search'
" Plug 'skwp/vim-easymotion'
" Plug 'vim-scripts/IndexedSearch'
" Plug 'terryma/vim-multiple-cursors'
"
" ' General vim improvements
" Plug 'bogado/file-line'
" Plug 'mattn/webapi-vim'
" Plug 'skwp/greplace.vim'
" Plug 'skwp/vim-conque'
" Plug 'vim-scripts/AnsiEsc.vim'
" Plug 'vim-scripts/AutoTag'
" Plug 'vim-scripts/lastpos.vim'
" Plug 'vim-scripts/sudo.vim'
" Plug 'xsunsmile/showmarks'
"
" ' Text objects
" Plug 'austintaylor/vim-indentobject'
" Plug 'bootleq/vim-textobj-rubysymbol'
" Plug 'coderifous/textobj-word-column.vim'
" Plug 'kana/vim-textobj-datetime'
" Plug 'kana/vim-textobj-entire'
" Plug 'kana/vim-textobj-function'
" Plug 'kana/vim-textobj-user'
" Plug 'lucapette/vim-textobj-underscore'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'thinca/vim-textobj-function-javascript'
" Plug 'vim-scripts/argtextobj.vim'
"
" ' Cosmetics, color scheme, Powerline...
" Plug 'chrisbra/color_highlight'
" Plug 'vim-scripts/TagHighlight'
" Plug 'bogado/file-line'
