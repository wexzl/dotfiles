call plug#begin()
    Plug 'whatyouhide/vim-gotham' "Тема nvim
    Plug 'vim-airline/vim-airline' "Строка состояния
    Plug 'preservim/nerdtree' "Навигация по файлам
    Plug 'Valloric/YouCompleteMe' "Автодополнение 
    Plug 'preservim/tagbar' "Просмотр тегов
    Plug 'scrooloose/syntastic' "Синтаксис
    Plug 'Yggdroot/indentLine' "Отступы
    Plug 'tpope/vim-surround' "Окружения: каывчки, скобки, ит.
    "Plug 'tpope/vim-fugitive' "Интеграция с Git
    "Plug 'tmhedberg/SimpylFold' "Сворачивание Python
call plug#end()
set number
filetype off
filetype plugin indent off
syntax on
set background=dark
set nocompatible
set tabstop=4
set shiftwidth=4
set smarttab
colorscheme gotham
set expandtab
set softtabstop=4
set autoindent
set linebreak
set showbreak=> 
set whichwrap=<,>,[,],b,s
set autowrite
set showcmd showmode
set splitright
set autochdir
set list
set listchars=tab:»\ ,trail:·,extends:>,precedes:<
set autoread
set backspace=2
set confirm
set helplang=ru
set laststatus=2
set pastetoggle=<F2>
set clipboard=unnamed
set mouse=a
set scrolloff=3
set sidescroll=1
set sidescrolloff=4
set hlsearch
set incsearch
compiler gcc
set tildeop
set iminsert=0
set imsearch=0
set nofoldenable
set foldmethod=indent
set history=700
set undolevels=700
set encoding=utf8
set termencoding=utf8
set fileencodings=utf8,cp1251,koi8r
set wildmenu
set wildmode=longest:full,full 
set backspace=indent,eol,start whichwrap+=<,>,[,]
set foldcolumn=1
set wrap
set t_vb=
set ttyfast
set visualbell
set showmatch
set colorcolumn=0
set cursorline
set cursorcolumn
set exrc
set secure
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
"=====================================================
" Назначенные клавишь
"=====================================================

"Выход
nnoremap <C-w> :w<CR>
nnoremap <C-x> :wq<CR>
nnoremap <C-z> :q!<CR>

"Копи-паста
vmap <C-c> "+yi
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"TagBar
nmap <F4> :TagbarToggle<CR>
let g:tagbar_width=28
let g:tagbar_autofocus=1
let g:tagbar_expand=1
let g:tagbar_singleclick=1
let g:tagbar_autoshowtag=1
"=====================================================
" Буфер
"=====================================================
noremap <C-Left> :bprevious<CR>
nnoremap <C-Right> :bnext<CR>
noremap <C-q> :bdelete<CR>

"=====================================================
" Плагин airline
"=====================================================
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#tabline#enabled = 1 "Не показывать текущий маппинг
let g:gotham_airline_emphasised_insert = 0 "
let g:airline_theme='gotham'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'

"=====================================================
" Плагин syntastic
"=====================================================

"=====================================================
" Файловый менеджер Netrw
"=====================================================
"let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

"=====================================================
" Плагин NERDTree
"=====================================================
silent! map <F3> :NERDTreeToggle<CR>
silent! nmap <C-p> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<C-p>"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
let g:NERDTreeWinSize=16
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
augroup nerdtreehidecwd
  autocmd!
  autocmd FileType nerdtree setlocal conceallevel=3
          \ | syntax match NERDTreeHideCWD #^[</].*$# conceal
          \ | setlocal concealcursor=n
augroup fileencodings

"=====================================================
" Плагин syntastic
"=====================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"=====================================================
"indentLine
"=====================================================
let g:indentLine_setColors = 1
let g:indentLine_char_list = ['┊']

