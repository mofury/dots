" Spellchecking
set spelllang=de

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

" Umlaute
inoremap ae ä
inoremap AE Ä
inoremap oe ö
inoremap OE Ö
inoremap ue ü
inoremap UE Ü

" Ausnahmen
inoremap que que
inoremap Que Que
inoremap eue eue
inoremap Eue Eue
inoremap aue aue
inoremap Aue Aue
