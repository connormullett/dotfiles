
colorscheme darkblue
filetype on
syntax enable
filetype plugin indent on
set encoding=utf-8
set hlsearch
set autoindent
set smarttab

set expandtab
set shiftwidth=4
set softtabstop=4

" sane splits
set splitright
set splitbelow

" makefile use tabs
autocmd FileType make set tabstop=2 shiftwidth=2 softtabstop=0 noexpandtab

" mark extra whitespace
let c_space_errors=1
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

autocmd FileType python setlocal ts=2 sw=2 sts=2 expandtab

" map space to leader
nnoremap <SPACE> <Nop>
let mapleader = " "

" create blank line and stay in normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" buffers as tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" no --INSERT--
set hidden
" create tab as new file
nmap <leader>T :enew<CR>
" go to next tab
nmap <leader>l :bnext<CR>
" next tab
nmap <leader>h :bprevious<CR>
" close current tab
nmap <leader>bq :bp <BAR> bd #<CR>

" double tap space, go to previous buffer
nnoremap <leader><leader> :b#<CR>

" clear highlight
map <leader>c :noh<CR>

" TRANSPARANCY
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Visual cterm=reverse ctermbg=none

" relative line numbers
set nu! rnu!

let g:airline_powerline_fonts = 1

set laststatus=2

set noshowmode


" PLUGINS

execute pathogen#infect()

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" change warn colors
hi SpellCap ctermfg=027 ctermbg=226

" YouCompleteMe
" disable preview window
set completeopt-=preview

" clang-format
autocmd FileType c ClangFormatAutoEnable

" NERDTree
" open nerd tree
map <C-n> :NERDTreeToggle<CR>
" nerd tree disabled until toggled
let NERDTreeShowHidden=1
" nerd tree goes on the right
let NERDTreeWinPos='right'
" ignore files that match these patterns
let NERDTreeignore=['\.pyc$', '\~$', '\.git$']
" refresh nerdtree
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

set rtp+=~/.fzf

" auto format rust code on save
let g:rustfmt_autosave = 1

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

call plug#end()

" fzf
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

" search files like ctrl+f in chrome
nnoremap <silent> <C-f> :Files<CR>

" fzf use rg
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" livedown markdown preview
nmap gm :LivedownToggle<CR>
