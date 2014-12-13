execute pathogen#infect()
syntax on
filetype on
set nu
filetype indent plugin on

" Python stuff

" indentation rules for FFmpeg: 4 spaces, no tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set cindent
set textwidth=79
set cc=80
"set cinoptions=(0
set mouse=a
" Allow tabs in Makefiles.
autocmd FileType make,automake set noexpandtab shiftwidth=8 softtabstop=8
" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line

set backupdir=/tmp/vimbackup

set clipboard+=unnamed
if $TMUX == ''
    set clipboard+=unnamed
endif

" POWERLINE
set laststatus=2
set rtp+=/Users/jaidevd/github/powerline/powerline/bindings/vim

" Nerdtree
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

colorscheme torte
set guifont=Monaco:h12


" markdown folding
"let g:vim_markdown_folding_disabled=1

set splitright
set splitbelow

set formatoptions+=t
set tw=79

" SUPERTAB
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0
set completeopt=menuone,longest,preview

" vimwiki
"set nocompatible

