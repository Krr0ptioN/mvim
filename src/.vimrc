
" in {
call plug#begin('~/.vim/plugged')
    " Initialize plugin system
    Plug 'tomasr/molokai'
    Plug 'fmoralesc/molokayo'
    Plug 'junegunn/vim-easy-align'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'ycm-core/YouCompleteMe'
    Plug 'codota/tabnine-vim' ,{ 'dir': '~/.vim/plugged/tabnine-vim', 'do':'./install.sh'}
    Plug 'jaredgorski/spacecamp'
    Plug 'gruvbox-community/gruvbox'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'terryma/vim-expand-region'
    Plug 'jceb/vim-orgmode'
call plug#end()
" }

"" Looook
filetype indent on
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
set clipboard+=autoselect
set autoindent
set relativenumber

colorscheme molokayo 

" Mapping Area 
" General keymap
imap <C-g> <Esc>
map <C-A-g> :q! <CR>

let mapleader = " "
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR> 
" C style coding
map <F9> :make<cr>


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

