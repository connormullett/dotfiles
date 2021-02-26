
colo evening
filetype on
syntax on
filetype plugin indent on
set encoding=utf-8
set hlsearch
set autoindent
set smarttab

set expandtab
set shiftwidth=2
set softtabstop=2

" makefile use tabs
autocmd FileType make set tabstop=2 shiftwidth=2 softtabstop=0 noexpandtab

" mark whitespace
let c_space_errors=1
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

autocmd FileType python setlocal ts=2 sw=2 sts=2 expandtab

let mapleader = ","

" create blank line and stay in normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" buffers as tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" kite on statusline
" let g:airline_section_y = '%{kite#statusline()}'

set hidden
nmap <leader>T :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

nmap <leader>bq :bp <BAR> bd #<CR>

map <leader>c :noh<CR>

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Visual cterm=reverse ctermbg=none

set nu! rnu!

let g:airline_powerline_fonts = 1

set laststatus=2

set noshowmode

execute pathogen#infect()

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" typescript
" autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

" clang-format
autocmd FileType c ClangFormatAutoEnable

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinPos='right'
let NERDTreeignore=['\.pyc$', '\~$']
" refresh nerdtree
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

set rtp+=~/.fzf

" Vim Plug
" call plug#begin('~/.vim/plugged')

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'HerringtonDarkholme/yats.vim'

" call plug#end()
