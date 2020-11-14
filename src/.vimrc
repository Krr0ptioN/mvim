" in {
call plug#begin('~/.vim/plugged')
    " Initialize plugin system
    Plug 'tomasr/molokai'
    Plug 'fmoralesc/molokayo'
    Plug 'junegunn/vim-easy-align'
    Plug 'lervag/vimtex'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'deoplete-plugins/deoplete-clang'
    "Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'ycm-core/YouCompleteMe'
    Plug 'jaredgorski/spacecamp'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'terryma/vim-expand-region'
    Plug 'jceb/vim-orgmode'
    Plug 'preservim/nerdcommenter'
    Plug 'jiangmiao/auto-pairs'
call plug#end()
" }

"" Looook
filetype plugin on
syntax enable
set tabstop=4 shiftwidth=4
set expandtab
set ai
set hlsearch
set ruler
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nowrap
set colorcolumn=60
set encoding=utf-8
set mouse=a
set clipboard=unnamedplus
" set clipboard+=autoselect
set autoindent
set relativenumber

colorscheme molokayo 

" Mapping Area 
" General keymap
nnoremap <C-g> <Esc>

let mapleader = " "
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR> 
nnoremap <A-p> <C-y>
nnoremap <A-n> <C-e>
nnoremap <C-f> :FZF <CR>
" C coding
map <F9> :make<cr>
map <F8> :VimtexCompile<cr>
map <C-c> :qa! <cr>
map <C-q> :q! <cr>
map <C-s> :w <cr>
" Compile 
"" Keymap
" Multi Cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" Plugin setting
" NerdCommenter
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' },'rb': { 'left': '#', 'right': '' }, 'py': {'left':'#','right': ''}}

" Code formatting
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['-style="{IndentWidth: 4}""']
\}
let g:neoformat_enable_cpp = ['clangformat']
let g:neoformat_enable_c = ['clangformat']
" Linting
let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}
" Vimtex
" This is new style
let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'

