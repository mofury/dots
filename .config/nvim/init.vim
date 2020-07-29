" xdg
silent source $XDG_CONFIG_HOME/nvim/xdg.vim

" encoding
set encoding=utf8

" behaviour
set backspace=indent,start
set clipboard=unnamedplus
set hidden
filetype plugin indent on
runtime macros/matchit.vim

" move cursor to last position when opening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" mappings
let mapleader = " "
set pastetoggle=<Leader>p
nnoremap <Leader>r :source $XDG_CONFIG_HOME/nvim/init.vim<CR>
nnoremap <Leader>g :edit $XDG_CONFIG_HOME/nvim/init.vim<CR>
nnoremap <Leader>t :edit $XDG_CONFIG_HOME/nvim/after/ftplugin/<C-r>=&ft<CR>.vim<CR>

" spellchecking
set spellfile=$HOME/.vim/spell/utf-8.add
nnoremap <Leader>s :setlocal spell!<CR>

" search
set ignorecase smartcase
set hlsearch incsearch
nnoremap <Leader>h :nohlsearch<CR>

" indentation
set autoindent

" make
set tags=./tags;,tags;
set autowrite
autocmd QuickFixCmdPost [^l]* cwindow
nnoremap <Leader>m :make<CR>
nnoremap <Leader>f :copen<CR>
nnoremap <Leader>F :cclose<CR>
nnoremap <Leader>d :cn<CR>
nnoremap <Leader>e :cp<CR>

" interface
set colorcolumn=80
set wildmenu
set showcmd
set showfulltag
nnoremap <Leader>n :set number!<CR>
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
nnoremap <Leader>x :20Lex<CR>

" status line
set laststatus=2
set statusline=%n\ :\ %f%q%r%m%=%l,%c\ %y
nnoremap <Leader>l :set laststatus=

" color
syntax on
set termguicolors
let base16colorspace=256
colorscheme tomorrow-night

" Plugins
call plug#begin('~/.config/nvim/plugged')
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'autozimu/LanguageClient-neovim', {
	    \ 'branch': 'next',
	    \ 'do': 'bash install.sh',
	    \ }
call plug#end()

let g:go_def_mapping_enabled = 0

let g:LanguageClient_serverCommands = {
	\ 'go': ['gopls'],
	\ 'kotlin': ['kotlin-language-server'],
	\ }
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> K <Plug>(lcn-hover)
