
"" Plugin {
call plug#begin('~/.vim/plugged')
    " Initialize plugin system
    Plug 'junegunn/vim-easy-align'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'ycm-core/YouCompleteMe'
    Plug 'codota/tabnine-vim' ,{ 'dir': '~/.vim/plugged/tabnine-vim', 'do':'./install.sh'}
call plug#end()
" }

"" Looook
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
set clipboard=unnamed
set clipboard=unnamedplus
colorscheme monokai-dark

let mapleader = " "
" Mapping Area 
" 
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR> 
