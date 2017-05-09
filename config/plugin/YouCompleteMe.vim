" UltiSnips snippet suggestions
"
" ===================================
" TypeScript
"
" Semantic auto-completion
" Real-time diagnostic display
" Renaming symbols (RefactorRename <new name>)
" Go to definition, find references (GoToDefinition, GoToReferences)
" Semantic type information for identifiers (GetType)
" View documentation comments for identifiers (GetDoc)

" ==============================
"
" Diagnostics will also be displayed for TypeScript. Since YCM continuously recompiles your file as you type, you'll get notified of errors and warnings in your file as fast as possible.
"
" Here are the various pieces of the diagnostic UI:
"
" Icons show up in the Vim gutter on lines that have a diagnostic.
" Regions of text related to diagnostics are highlighted (by default, a red wavy underline in gvim and a red background in vim).
" Moving the cursor to a line with a diagnostic echoes the diagnostic text.
" Vim's location list is automatically populated with diagnostic data (off by default, see options).
"
" ==============================
"
" subcommand like so: :YcmCompleter GoToDefinition will invoke the GoToDefinition
"
" You may also want to map the subcommands to something less verbose; for instance, nnoremap <leader>jd :YcmCompleter GoTo<CR> maps the <leader>jd sequence to the longer subcommand invocation.
"
" ==============================
"
" The GoToDefinition subcommand
"
" Looks up the symbol under the cursor and jumps to its definition.
"
" ==============================
"
" The GoToReferences subcommand
"
" This command attempts to find all of the references within the project to the identifier under the cursor and populates the quickfix list with those locations.
"
" ==============================
"
" The GetType subcommand
"
" Echos the type of the variable or method under the cursor, and where it differs, the derived type.
"
" For example:
"
"     std::string s;
" Invoking this command on s returns std::string => std::basic_string<char>
"
" For example:
"
" const char *s = "String";
" auto x = &s; // invoking on x or auto returns "auto";
"              // invoking on s returns "const char *"
" std::cout << *x; // invoking on x returns "const char ** => const char **"
" NOTE: Causes re-parsing of the current translation unit.
"
" ==============================
"
" The GetDoc subcommand
"
" Displays the preview window populated with quick info about the identifier under the cursor. Depending on the file type, this includes things like:
"
" The type or declaration of identifier,
" Doxygen/javadoc comments,
" Python docstrings,
" etc.
" ==============================
"
" The RefactorRename <new name> subcommand
"
" In supported file types, this command attempts to perform a semantic rename of the identifier under the cursor. This includes renaming declarations, definitions and usages of the identifier, or any other language-appropriate action. The specific behavior is defined by the semantic engine in use.
"
" Similar to FixIt, this command applies automatic modifications to your source files. Rename operations may involve changes to multiple files, which may or may not be open in Vim buffers at the time. YouCompleteMe handles all of this for you. The behavior is described in the following section.
"
" ==============================
"
" The RestartServer subcommand
"
" Restarts the semantic-engine-as-localhost-server for those semantic engines that work as separate servers that YCM talks to.
"
" An additional optional argument may be supplied for Python, specifying the python binary to use to restart the Python semantic engine.

" :YcmCompleter RestartServer /usr/bin/python3.4

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
set completeopt-=preview
