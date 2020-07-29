" Compiling with :make
if filereadable('Makefile')
    setlocal makeprg=make
else
    exec "setlocal makeprg=make\\ -f\\ ~/dokumente/kotlin.mk\\ " . substitute(bufname("%"), "kt$", "jar", "")
endif

" Running
nnoremap <Leader>r :!java -jar <C-r>%<bs><bs>jar<cr>

