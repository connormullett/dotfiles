
colo evening
filetype on
syntax on
filetype plugin indent on
set encoding=utf-8
set hlsearch
set autoindent
set smarttab
set ts=2
set sw=0
set sts=0
set expandtab

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

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinPos='right'
let NERDTreeignore=['\.pyc$', '\~$']

set rtp+=~/.fzf
