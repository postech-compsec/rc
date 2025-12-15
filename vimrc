set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'taglist.vim'
Plugin 'mhinz/vim-signify'

call vundle#end()

filetype plugin indent on
set tabstop=4
set shiftwidth=2
set expandtab

map <C-n> :NERDTreeToggle<CR>
map <C-t> :TlistToggle<CR>

let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = {'python': {'left': '#'}}

set matchpairs+=<:>
set list
set listchars=tab:→\ ,trail:•,extends:#,nbsp:.

set hlsearch
set number
set ignorecase
set autoindent
set cindent
set smartindent

" set tw to wrap at 80 chars
set textwidth=79
au BufRead,BufNewFile *.md setlocal textwidth=79

" highlight cursor line
set cursorline
highlight CursorLine cterm=NONE ctermbg=237

" natural vsplit
set splitbelow
set splitright

syntax on

set background=dark
set t_Co=256

" ctrl+s to strip trailing whitespaces
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey
set colorcolumn=80
fun! ToggleCC()
    if &cc == ''
        set cc=80
    else
        set cc=
    endif
endfun
map <C-c> :call ToggleCC()<CR>

" ctrl+s to strip trailing whitespaces
map <C-s> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

autocmd FileType plaintex setlocal nocindent
autocmd Filetype json let g:indentLine_enabled = 0

" for vim-signify
set updatetime=100

