set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'https://github.com/powerman/vim-plugin-AnsiEsc.git'
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"
set nu
set relativenumber
syntax on
set tabstop=2 shiftwidth=2
set autoindent
set expandtab
set softtabstop=2
set wrap
set encoding=utf-8
" searching
set ignorecase
set smartcase
set textwidth=80

set incsearch
set wildmenu
set showmatch
" set cursorline

" vim-go
set backspace=indent,eol,start
filetype plugin indent on
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" cursor settings
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" autocmd BufRead * AnsiEsc

set pastetoggle=<cp>
"esc in insert mode
inoremap kj <esc>
"esc in command mode
cnoremap kj <C-C>
"cnoremap qq <C-w><C-r>
colorscheme gotham256
set hlsearch
hi Search ctermbg=178
hi Search ctermfg=black
highlight Comment ctermfg=63
autocmd BufWritePre * :%s/\s\+$//e

let g:ycm_use_clangd = 1
let g:ycm_clangd_binary_path = '/usr/bin/clangd-9/'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_warning_symbol = '>>'
let g:ycm_error_symbol = '⛔'
let g:ycm_confirm_extra_conf = 0

let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }
