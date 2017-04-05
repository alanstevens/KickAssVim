" Super-fast identifier completer including tags files and syntax elements
" Intelligent suggestion ranking and filtering
" File and path suggestions
" Suggestions from Vim's OmniFunc
" UltiSnips snippet suggestions
"
" TypeScript
"
" Semantic auto-completion
" Renaming symbols (RefactorRename <new name>)
" Go to definition, find references (GoToDefinition, GoToReferences)
" Semantic type information for identifiers (GetType)
" View documentation comments for identifiers (GetDoc)
" JavaScript
"
" Intelligent auto-completion
" Renaming variables (RefactorRename <new name>)
" Go to definition, find references (GoToDefinition, GoToReferences)
" Type information for identifiers (GetType)
" View documentation comments for identifiers (GetDoc)
" Management of Tern server instance

" https://github.com/Microsoft/TypeScript/wiki/TypeScript-Editor-Support#vim
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
set completeopt-=preview
