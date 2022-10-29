set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set cursorcolumn
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
call plug#begin("~/.vim/plugged")
    Plug 'preservim/nerdtree'
    Plug 'LunarWatcher/auto-pairs'
call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
nnoremap <silent><c-tab> :bn<cr>
nnoremap <silent><c-s-tab> :bp<cr>
nnoremap <silent><c-b> :NERDTreeToggle<cr>
nnoremap <A-Up> :m . -2<CR>==
nnoremap <A-Down> :m . +1<CR>==

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
autocmd FileType python map <buffer> <c-m> :w<CR>:exec '!python3' shellescape(@%,1)<CR>

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
set laststatus=2
set statusline+=\ %l
set statusline+=\ <<
set statusline+=\ %F\ %*
set statusline+=\ >>
set statusline+=%=
set statusline+=\ <<
set statusline+=\ >>
" }}}
