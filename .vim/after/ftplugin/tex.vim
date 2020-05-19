" Spellchecking
setlocal spell
set spelllang=de

" Compiling with :make
setlocal errorformat=%f:%l:\ %m,%f:%l-%\\d%\\+:\ %m
if filereadable('Makefile')
    setlocal makeprg=make
else
    exec "setlocal makeprg=make\\ -f\\ ~/documents/latex.mk\\ " . substitute(bufname("%"), "tex$", "pdf", "")
endif

" Open output with zathura
nnoremap <Leader>p :!zathura %:r.pdf &<CR><CR>

" Macros
" Sections and subsections
inoremap <Leader>se \section{<++>}<CR>\label{sec:<++>}<CR><++>
inoremap <Leader>ss \subsection{<++>}<CR>\label{subsec:<++>}<CR><++>
" Centering
inoremap <Leader>c \begin{center}<CR><++><CR>\end{center}<CR><++>
" Itemization and enumeration
inoremap <Leader>i \begin{itemize}<CR>\item<Space><++><CR>\end{itemize}<ESC>/<++><CR>3xs
inoremap <Leader>en \begin{enumerate}<CR>\item<Space><++><CR>\end{enumerate}<ESC>/<++><CR>3xs
" Equations
inoremap <Leader>eq \begin{equation}<CR><++><CR>\end{equation}<CR><++>
inoremap <Leader>eu \begin{equation<++>}<CR><++><CR>\end{equation<++>}<CR><++>
" Figures
inoremap <Leader>fi \begin{figure}<CR>\caption{<++>}<CR>\label{fig:<++>}<CR><++><CR>\end{figure}<CR><++>
" Graphics
inoremap <Leader>g \includegraphics[width=<++>\textwidth]{<++>}<++>
" Minipage
inoremap <Leader>mp \begin{figure}[htbp]<CR>\begin{minipage}{0.4\textwidth}<CR>\centering<CR>\caption{<++>}<CR><++><CR>\end{minipage}\hfill<CR>\begin{minipage}{0.4\textwidth}<CR>\centering<CR>\caption{<++>}<CR><++><CR>\end{minipage}<CR>\end{figure}<CR><++>
" Beamer frame
inoremap <Leader>fr \begin{frame}<CR>\frametitle{<++>}<CR><++><CR>\end{frame}<CR><++>
" Quote
inoremap <Leader>q \textquote{
