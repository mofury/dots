" set tags+=/usr/lib/go/src/tags
set noexpandtab

" Compiling with :make
if filereadable('Makefile')
    setlocal makeprg=make
else
    exec "setlocal makeprg=make\\ -f\\ ~/go/go.mk\\ "
endif

nmap <Leader>b <Plug>(go-build)
nmap <Leader>r <Plug>(go-run-vertical)

let b:match_words = '\<if\>:\<else\>,\<switch\>:\<case\>:\<default\>'
