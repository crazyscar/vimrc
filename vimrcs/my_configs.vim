"Get out of VI's compatible mode..
set nocompatible

"show list
set list
set listchars=tab:>-,trail:-

" autoload cscope.out in upper directory
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    if cscope_connection(1, db)
        return
    endif
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()
