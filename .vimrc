set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes'
Plugin 'tmux-plugins/vim-tmux'

"awesome auto complete, need vim built with python and configuration file
"define near bottom of this config file
Plugin 'Valloric/YouCompleteMe'

"autocomplete brackets, parens, quotes, etc
Plugin 'Raimondi/delimitMate'

"Ctrl+n to see file tree
Plugin 'scrooloose/nerdtree'

"fancy status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

"ask to open file in perforce when writing/changing read only file
Bundle 'nfvs/vim-perforce'

"Tagbar
Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-obsession'

"autofill snippets
Plugin 'SirVer/ultisnips'

"snippet templates
Plugin 'honza/vim-snippets'

"multiple plugins can utilize tab
Bundle 'ervandew/supertab'

Plugin 'regedarek/ZoomWin'

Plugin 'erig0/cscope_dynamic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline#extensions#tabline#enabled = 1

"Tabs to ViaSat standards
set expandtab
set smarttab
set shiftwidth=3
set tabstop=3

set rnu

set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
set backspace=indent,eol,start
