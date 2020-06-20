" Appearance
set number relativenumber           " Show linenumbers
syntax on                           " Syntax highlighting
filetype plugin indent on           " Automatoc indentation
set laststatus=2                    " Show status bar
set noshowmode                      " Don't show vims standard mode indicator
set colorcolumn=80                  " Mark the 80th column
let base16colorspace=256            " Use 256 colorspace
colorscheme base16-default-dark     " Set colorscheme

" Macros
" Map leader to q
let mapleader = "q"
" Move to next <++>
inoremap <Leader>ö <ESC>/<++><CR>3xs
" Delete trailing whitespace
inoremap <Leader>x <C-o>:<C-U>call StripTrailingWhitespace()<CR>
"Compile document
nnoremap <Leader>mk :w<CR>:make<CR><CR>
" Move to next/previous entry of the quickfix list
nnoremap <C-j> :cn<CR>
nnoremap <C-k> :cp<CR>
" Pastemode
set pastetoggle=<F2>
" Edit vimrc
nnoremap <Leader>mv :w<CR>:edit $XDG_CONFIG_HOME/nvim/init.vim<CR>
" Edit ftplugin
nnoremap <Leader>mf :w<CR>:edit $XDG_CONFIG_HOME/nvim/after/ftplugin/<C-r>=&ft<CR>.vim<CR>

" General behaviour
set wildmenu                " :find behaviour
set hidden

set tabstop=4               " Width of tabstop
set softtabstop=0
set expandtab               " Spaces over tabs
set shiftwidth=4            " Size of an indentation
set smarttab                " Use 'smart' tabs

set ignorecase              " Make search case-insensitive
set hlsearch                " Highlight results
set incsearch               " Preview results

set encoding=utf8

" Plugins
call plug#begin('~/.config/nvim/plugged')
    " Base16 colors
    Plug 'chriskempson/base16-vim'
    " A light status bar
    Plug 'itchyny/lightline.vim'
    " Sxhkdrc syntax
    Plug 'baskerville/vim-sxhkdrc'
    " Display hex colors
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
call plug#end()

" Hexokinase setup
set termguicolors
let g:Hexokinase_highlighters = [ 'virtual' ]
let g:Hexokinase_optInPatterns = [
            \ 'full_hex',
            \ 'triple_hex',
            \ 'rgb',
            \ 'rgba',
            \ 'hsl',
            \ 'hsla',
            \ 'colour_names'
\ ]

" Base16 setup
if filereadable(expand("~/.config/nvim/vimrc_background"))
  let base16colorspace=256
  source ~/.config/nvim/vimrc_background
endif
