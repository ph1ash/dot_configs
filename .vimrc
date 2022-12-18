set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader=" "

syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'tmux-plugins/vim-tmux'

"awesome auto complete, need vim built with python and configuration file
"define near bottom of this config file
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'romkatv/powerlevel10k'

Plugin 'tpope/vim-obsession'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'ervandew/supertab'
Plugin 'regedarek/ZoomWin'
Plugin 'tpope/vim-dispatch'

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


set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set rnu

set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
set backspace=indent,eol,start

set nowrap

nnoremap <leader><leader>v :e ~/.vimrc<CR>

nnoremap <leader><leader>ne :NERDTreeToggle <CR>

set laststatus=2

colorscheme gruvbox
set background=dark
