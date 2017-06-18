
" _  ___      _                        __      ___
"| |/ (_)    | |        /\             \ \    / (_)
"| ' / _  ___| | __    /  \   ___ ___   \ \  / / _ _ __ ___
"|  < | |/ __| |/ /   / /\ \ / __/ __|   \ \/ / | | '_ ` _ \
"| . \| | (__|   <   / ____ \\__ \__ \    \  /  | | | | | | |
"|_|\_\_|\___|_|\_\ /_/    \_\___/___/     \/   |_|_| |_| |_|

if has('win32') || has ('win64')
    call plug#begin('~/vimfiles/plugins')
else
    call plug#begin('~/.vim/plugins')
endif

" Colors
Plug 'wgibbs/vim-irblack'
Plug 'twerth/ir_black'
Plug 'croaky/vim-colors-github'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'vim-scripts/pyte'
Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'

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
Plug 'ternjs/tern_for_vim'                      " provides Tern-based JavaScript editing support.  It will hook into omni completion to handle autocompletion
Plug 'mileszs/ack.vim'                          " like grep but better. Currently used with Ag, if available
Plug 'vim-airline/vim-airline'                  " lean & mean statusline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'           " https://github.com/vim-airline/vim-airline/wiki/Screenshots
Plug 'jeetsukumaran/vim-buffergator'            " list, select and switch between buffers.
Plug 'duff/vim-bufonly'                         " quickly close all other buffers
Plug 'scrooloose/syntastic'                     " syntax error checking
Plug 'scrooloose/nerdtree'                      " provides a file system tree view
Plug 'jistr/vim-nerdtree-tabs'                  " NERDTree and tabs together in Vim, painlessly
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra syntax and highlight for nerdtree files
Plug 'tomtom/tcomment_vim'                      " easy to use, file-type sensible comments for Vim. It can handle embedded syntax.
Plug 'sjl/vitality.vim'                         " Make Vim play nicely with iTerm 2 and tmux. Enables a thin cursor while in insert mode in console vim
Plug 'ctrlpvim/ctrlp.vim'                       " Full path fuzzy file, buffer, mru, tag, ... finder
Plug 'vim-scripts/ZoomWin'                      " enables temporary full screen for a viewport
Plug 'airblade/vim-rooter'                      " Changes Vim working directory to project root (identified by presence of known directory or file).
Plug 'othree/html5.vim'                         " HTML5 omnicomplete and syntax
Plug 'ap/vim-css-color'                         " Preview colours in source code while editing
Plug 'cakebaker/scss-syntax.vim'                " Vim syntax file for scss (Sassy CSS)
Plug 'Chiel92/vim-autoformat'                   " Provides easy code formatting in Vim by integrating existing code formatters.
Plug 'junegunn/vim-easy-align'                  " Makes those funny alignment issues trivial.
Plug 'Quramy/vim-js-pretty-template'            " highlights JavaScript's Template Strings in other FileType syntax rule
Plug 'jason0x43/vim-js-indent'                  " Vim indenter for standalone and embedded JavaScript
Plug 'MarcWeber/vim-addon-mw-utils'             " (dependency of snipmante) vim: interpret a file by function and cache file automatically
Plug 'tomtom/tlib_vim'                          " (dependency of snipmate) Some utility functions for VIM
Plug 'garbas/vim-snipmate'                      " snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
Plug 'magarcia/vim-angular2-snippets'           " Snipmate snippets for Angular 2 for TypeScript and HTML, based on johnpapa/vscode-angular2-snippets.
Plug 'majutsushi/tagbar'                        " Vim plugin that displays tags in a window, ordered by scope
Plug 'sjl/gundo.vim'                            " Vim plugin to visualize your Vim undo tree.
Plug 'moll/vim-bbye'                            " Delete buffers and close files in Vim without closing your windows or messing up your layout.
Plug 'junegunn/fzf.vim'                         " fzf ❤️ vim - Things you can do with fzf and Vim.
" if !has('win32') && !has ('win64')              " YouCompleteMe is a total fail on Windows, at least for me
    Plug 'Valloric/YouCompleteMe'               " a fast, as-you-type, fuzzy-search code completion engine
" endif
Plug 'Shougo/vimproc.vim'                       " (required by tsuquyomi) (not needed with vim 8+ or neovim, actually, neovim requires it) Interactive command execution in Vim.
Plug 'Shougo/unite.vim'                         " (dependency of Tsuquyomi) Unite and create user interfaces
Plug 'Shougo/unite-outline'                     " (dependency of Tsuquyomi) outline source for unite.vim
Plug 'mhartington/vim-typings'                  " search for typings in vim! (relies on Unite)
Plug 'Quramy/tsuquyomi'                         " A Vim plugin for TypeScript (depends on Shougo/vimproc.vim)
Plug 'vvakame/dtsm'                             " depends on unite! The .d.ts manager
" Plug 'leafgarland/typescript-vim'               " Typescript syntax files for Vim
Plug 'HerringtonDarkholme/yats.vim'             " The most advanced TypeScript Syntax Highlighting
Plug 'bdauria/angular-cli.vim'                  " a Vim Plugin for angular-cli
Plug 'Raimondi/delimitMate'                     " provides insert mode auto-completion for quotes, parens, brackets, etc.
" =============================================
" Markdown plugins. Hard to know which is best.
" =============================================
" Plug 'mkitt/markdown-preview.vim'             " * opens an html file in the default app which is macvim for me. FAIL! * Preview markdown files in the browser from vim (requires redcarpet gem)
" Plug 'nelstrom/vim-markdown-preview'          " * Requires running an install.sh. Uses the default app (MacVim) * Preview markdown files in the browser from vim
" Plug 'maba/vim-markdown-preview'                " * uses default app as above * preview markdown documents in the browser from vim.
" Plug 'andrewferrier/vim-markdown-preview'     " preview markdown documents in the browser from vim
" Plug 'iamcco/markdown-preview.vim'            " Real-time markdown preview plugin for vim
" Plug 'jtratner/vim-flavored-markdown'         " jtratner/vim-flavored-markdown
" Plug 'plasticboy/vim-markdown'                " Markdown Vim Mode
" Plug 'gabrielelana/vim-markdown'              " Markdown for Vim: a complete environment to create Markdown files with a syntax highlight that doesn't suck!
Plug 'tpope/vim-markdown'                       " Vim Markdown runtime files
Plug 'suan/vim-instant-markdown'                " Instant Markdown previews from VIm!
" =============================================

" load this last
Plug 'ryanoasis/vim-devicons'                   " Adds file type glyphs/icons to many popular Vim Plugins such as: NERDTree, vim-airline, unite, vim-startify and many more
call plug#end()

" Plug 'terryma/vim-multiple-cursors'             " True Sublime Text style multiple selections for em
" Plug 'severin-lemaignan/vim-minimap'            " A Sublime-like minimap for VIM, based on the Drawille console-based drawing library
" Plug 'jiangmiao/auto-pairs'                     " Vim plugin, insert or delete brackets, parens, quotes in pair
" Plug 'ericpruitt/tmux.vim'                      " Vim syntax file for tmux configuration files
