"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
call pathogen#infect('~/.vim_runtime/sources_forked')
call pathogen#infect('~/.vim_runtime/sources_non_forked')
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
endif
nnoremap <silent> <F10> :YRShow<CR>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => Peepopen
""""""""""""""""""""""""""""""
map <leader>j :PeepOpen<cr>


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn .git generated'
let Grep_Skip_Files = '*~ cscope.out'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => winmanager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MiniBufferExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F12> :A<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F3> :Grep<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SuperTab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tasklist 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>td <Plug>TaskList


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>g :GundoToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:syntastic_python_checkers=['flake8']
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python-mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1

" => Code Check
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_cwindow = 1
" => Rope
let g:pymode_rope = 0
"let g:pymode_rope_lookup_project = 1
" => Rope Code Completion
let g:pymode_rope_completion = 0
"let g:pymode_rope_complete_on_dot = 1
" => pymode Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
let g:pymode_syntax_string_format = g:pymode_syntax_all


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => jedi-vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python setlocal completeopt-=preview
