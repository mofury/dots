setlocal spell
set spelllang=de_DE

nnoremap <Leader>r :w<CR>:!<Space>groff<Space>-ms<Space><C-r>%<Space>-T<Space>pdf<Space>><Space><C-r>%<Backspace><Backspace>pdf<CR><CR>
nnoremap <Leader>e :w<CR>:!<Space>groff<Space>-ms<Space>-e<Space><C-r>%<Space>-T<Space>pdf<Space>><Space><C-r>%<Backspace><Backspace>pdf<CR><CR>
