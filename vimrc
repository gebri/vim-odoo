" Enable Pathogen
execute pathogen#infect()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" General
syntax enable
set number
set incsearch 
set hlsearch
set ignorecase
set smartcase
set tw=0
set sw=4
set sts=4
set cindent
set smartindent
set autoindent
set expandtab
set title

" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
set list listchars=tab:»·,trail:.
set nocompatible

filetype plugin indent on

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ [BUF=%n]\ %{strftime(\"%d-%m-%Y\ %H:%M:%S\",getftime(expand(\"%:p\")))}

set mouse=a

set backspace=indent,eol,start

"set guifont=Monospace\ Bold\ 12
let t_Co=256

"Value for snippet
let g:snips_author="First Name LAST NAME"
" Shortcut to reload snippets
noremap <silent><F6> :call ResetSnippets()<CR>:call GetSnippets(snippets_dir, &ft)<CR>

" Delete space in end file on write file
autocmd BufWritePre *.py :%s/\s\+$//e

au FileType c,cpp,java set mps+==:;

set backupdir=/tmp
set directory=/tmp

set nowrap

" goto file under cursor
map gf :tabedit <cfile><CR>

if has("autocmd")
    autocmd BufEnter * lcd %:p:h
endif

" Toggle paste/nopaste for easy clipboard paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" show all folds closed
set foldenable
set foldmethod=marker
autocmd FileType c,cpp,d,perl,java,cs set foldmethod=syntax
autocmd FileType python,xml set foldmethod=indent
set foldcolumn=4
set foldlevel=0
"set foldmethod=indent
highlight Folded ctermfg=6 ctermbg=0
highlight FoldColumn ctermfg=6 ctermbg=0
" Toggle folding
noremap <F3> zi
" Redraw terminal garbage chars after start
"autocmd VimEnter * redraw!
set t_RV=
