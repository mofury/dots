" set tags+=/usr/lib/go/src/tags
set noexpandtab

nnoremap [[ ?^func<CR>/<up><up><CR>''
nnoremap ]] /^func<CR>/<up><up><CR>''
nnoremap [] /^}<CR>/<up><up><CR>''
nnoremap ][ ?^}<CR>/<up><up><CR>''

let b:match_words = '\<if\>:\<else\>,\<switch\>:\<case\>:\<default\>'
