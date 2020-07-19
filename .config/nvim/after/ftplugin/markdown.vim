" Linewrapping
set colorcolumn=
set linebreak breakindent
nnoremap j gj
nnoremap k gk

" Spellchecking
set spell spelllang=de_20

" Compiling with :make
setlocal errorformat=%f:%l:\ %m,%f:%l-%\\d%\\+:\ %m
if filereadable('Makefile')
    setlocal makeprg=make
else
    exec "setlocal makeprg=make\\ -f\\ ~/documents/markdown.mk\\ " . substitute(bufname("%"), "md$", "pdf", "")
endif

" Compile to pdf through pandoc
nnoremap <Leader>c :!pandoc % --filter pandoc-citeproc --bibliography="/home/moritz/documents/uni/uni.bib" -o pdf%:r.pdf<CR>
" Open compiled pdf in zathura
nnoremap <Leader>p :!zathura %:r.pdf &<CR><CR>
