execute pathogen#infect()
Helptags

" remember previous position in file
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" leader
let mapleader="-"

syntax on
filetype plugin indent on
filetype on
filetype plugin on
set t_Co=256
colorscheme jellybeans
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set showmatch
set ruler
set incsearch
set number
set autochdir
set hlsearch
"set ignorecase
"set smartcase
set spell
set cursorline
set nocursorcolumn
set hidden
"let &colorcolumn=join(range(81,999),",")
"highlight ColorColumn ctermbg=244 guibg=#101010
set foldcolumn=1
set foldlevelstart=99
set guicursor+=a:blinkon0
set guioptions-=r
set guioptions-=m
set guioptions-=T
set guioptions-=L
nnoremap <space> za
vnoremap <space> zf
" for help and docstrings
set splitbelow

" vertical split for diff
set diffopt+=vertical

set list listchars=tab:\|_,trail:·

" new improved whitespace cleaner - preserves prev search and cursor pos
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

com! Cleanws call <SID>StripTrailingWhitespaces()

" custom mappings
nmap <F8> :TagbarToggle<CR>
nmap <A-1> :b!1<CR>
nmap <A-2> :b!2<CR>
nmap <A-3> :b!3<CR>
nmap <A-4> :b!4<CR>
nmap <A-5> :b!5<CR>
nmap <A-6> :b!6<CR>
nmap <A-7> :b!7<CR>
nmap <A-8> :b!8<CR>
nmap <A-9> :b!9<CR>
nmap <A-0> :b!10<CR>
noremap <A-/> :nohlsearch<CR>
noremap /   :nohlsearch<CR>

noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

" relative line numbering
noremap <F2>      :set relativenumber!<CR>
set relativenumber

" next and previous buffer
noremap <A-,>    :bp<CR>
noremap <A-.>    :bn<CR>
" switch back and forth between 2 buffers
noremap <A-`>    :b#<CR>
" same for terminal vim
noremap `      :b#<CR>

" don't remove indent on comments
inoremap # X<BS>#

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Unite bindings
" following two replace scroll up and down without cursor, which I rarely use
noremap <C-B>   :Unite buffer<CR>
noremap <C-F>   :Unite file<CR>

" command line editing
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <A-b> <S-Left>
cnoremap b <S-Left>
cnoremap <A-f> <S-Right>
cnoremap f <S-Right>

" calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" always show gitgutter column
" nicer for keeping text width and alignment fixed
let g:gitgutter_sign_column_always = 1

" Custom filetype extensions
" neuron filetype for mod
au BufRead,BufNewFile *.mod set filetype=NMODL
" mardown filetype extension
au BufRead,BufNewFile *.md set filetype=markdown

" easytags options
let g:easytags_by_filetype = '~/tags'
let g:easytags_include_members = 1
let g:easytags_autorecurse = 0
let g:easytags_events = ['BufWritePost', 'BufReadPost']
let g:easytags_auto_highlight = 0
let g:easytags_async = 1
"let g:easytags_syntax_keyword = 'always'

" syntastic checkers
let g:syntastic_python_checkers = ['pyflakes']

" run syntastic on load (will do nothing for unsupported types)
au BufWinEnter * SyntasticCheck
