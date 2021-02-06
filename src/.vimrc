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
    Plug 'chriskempson/base16-vim'
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
set termguicolors
" colorscheme molokayo 
colorscheme base16-irblack 

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
"" Sroll fast
inoremap <A-k> <C-o>5k
inoremap <A-j> <C-o>5j 
nnoremap <A-k> 5k
nnoremap <A-j> 5j
"" Open fuzzy finder
nnoremap <C-f> :FZF <CR>


" C coding
map <F9> :make<cr>
map <C-l> :tabnext <cr>
map <C-h> :tabprevious <cr>
map <F8> :VimtexCompile<cr>
map <C-c> :qa! <cr>
map <C-q> :q! <cr>
map <C-s> :w <cr>

inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
inoremap <C-e> <C-o>e
inoremap <C-b> <C-o>b
inoremap <C-w> <C-o>w

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

" Fuzzy finder
" ---- Customization
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
