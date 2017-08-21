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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Bundle 'nfvs/vim-perforce'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-obsession'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'ervandew/supertab'
Plugin 'regedarek/ZoomWin'
Plugin 'erig0/cscope_dynamic'
Plugin 'brookhong/cscope.vim'
Plugin 'scrooloose/syntastic'
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

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:perforce_open_on_change=1

let g:airline_powerline_fonts = 1

"Tabs to ViaSat standards
set expandtab
set smarttab
set shiftwidth=3
set tabstop=3

set rnu

set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
set backspace=indent,eol,start

set nowrap

nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

nnoremap <leader><leader>v :e ~/.vimrc<CR>

nnoremap <leader><leader>t :TagbarToggle<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bN<CR>
nnoremap <leader><leader>s :source %<CR>
nnoremap <leader><leader>ne :NERDTreeToggle <CR>
nnoremap <leader><leader>r :!ctags -R .<CR><CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprev<CR>
nnoremap <leader>sg :SyntasticCheck gcc<CR>
nnoremap <leader>sc :SyntasticCheck cppcheck<CR>
nnoremap <leader>sp :SyntasticCheck pyflake<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set laststatus=2

colorscheme gruvbox
set background=dark
