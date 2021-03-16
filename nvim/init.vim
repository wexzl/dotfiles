call plug#begin()
    "---------=== Навигация по коду/проекту ===-------------
    Plug 'preservim/nerdtree' "Навигация по файлам
    Plug 'preservim/tagbar' "Просмотр тегов
    Plug 'kien/ctrlp.vim' "Поиск Vim
    "---------------=== Поддержка языка ===-------------
    " --- Python ---
    Plug 'python-mode/python-mode' "Рефакторинг, документация, дебаггер Python и т.п.
    Plug 'davidhalter/jedi-vim' "Автодополнение для Python
    Plug 'vim-scripts/indentpython.vim' "Отступы Python
    Plug 'tmhedberg/SimpylFold' "Сворачивание Python
    "------------------=== Nvim дополнительно ===----------------------
    Plug 'whatyouhide/vim-gotham' "Тема NVim
    Plug 'vim-airline/vim-airline' "Строка состояния
    Plug 'ryanoasis/vim-devicons' "Иконки в Vim
    "------------------=== Прочее ===----------------------
    Plug 'Valloric/YouCompleteMe' "Автодополнение
    Plug 'tpope/vim-fugitive' "Интеграция с Git
    Plug 'honza/vim-snippets' "Сниппеты
    Plug 'gingerhot/conque-term-vim' "Дебагер
    Plug 'fisadev/FixedTaskList.vim' "Поиск в файле fixme, todo и т.п.
    "--------------=== Поддержка среды разработки ===---------------
    Plug 'nvie/vim-flake8' "Проверка синтаксиса
    Plug 'Glench/Vim-Jinja2-Syntax' "Поддержка синтаксиса шаблонов
    Plug 'scrooloose/syntastic' "Синтаксис
    Plug 'Yggdroot/indentLine' "Отступы
    Plug 'tpope/vim-surround' "Окружения: каывчки, скобки, ит
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
set undofile
set undodir=~/.config/nvim/undodir
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

" TaskList настройки
map <F1> :TaskList<CR>

" ConqueTerm
"Запуск интерпретатора на F5
nnoremap <F5> :ConqueTermSplit ipython<CR>

" а debug-mode на <F6>
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR>
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0
" проверка кода в соответствии с PEP8 через <leader>8
"autocmd FileType python map <buffer> <leader>8 :PymodeLint<CR>

" автокомплит через <Ctrl+Space>
inoremap <C-space> <C-x><C-o>
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
let g:airline_section_b = '%{FugitiveStatusline()}'

"=====================================================
" 
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

"=====================================================
"Snippets
"=====================================================
" указываем каталог с настройками SnipMate
let g:snippets_dir = "~/.config/nvim/snippets"

"=====================================================
"YouCompleteMe
"=====================================================
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pep8"
let g:pymode_lint_ignore="E501,W601,C0110,E2"

" провека кода после сохранения
let g:pymode_lint_write = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 0

"=====================================================
"Python Indentation
"(сворачивание, отступы и длина для python)
"=====================================================
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

let python_highlight_all=1

augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

" --- Python ---
"autocmd FileType python set completeopt-=preview " раскомментируйте, в случае, если не надо, чтобы jedi-vim показывал документацию по методу/классу
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" --- JavaScript ---
let javascript_enable_domhtmlcss=1
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.json setlocal ft=javascript

" --- HTML ---
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" --- template language support (SGML / XML too) ---
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
autocmd BufNewFile,BufRead *.mako setlocal ft=mako
autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
let html_no_rendering=1
let g:closetag_default_xml=1
let g:sparkupNextMapping='<c-l>'
autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source ~/.vim/scripts/closetag.vim

" --- CSS ---
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
