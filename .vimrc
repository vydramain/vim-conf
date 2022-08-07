"" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
" set spell	" Enable spell-checking
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set cindent	" Use 'C' style program indenting
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set confirm	" Prompt confirmation dialogs
set ruler	" Show row and column ruler information
set showtabline=2	" Show tab bar
set cmdheight=2	" Command line height
 
set undolevels=2000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
"" Generated by VimConfig.com

" Set cursor type to underline
:set guicursor+=n:hor20-Cursor/lCursor
:set guicursor+=i:hor20-Cursor/lCursor

" Set cursor selection colors
highlight Cursor guifg=white guibg=black
highlight lCursor guifg=white guibg=steelblue

" packadd! dracula
syntax on 
colorscheme slate

" Better tab experience - from https://webdevetc.com/
" map <leader>tn :tabnew<cr>
" map <leader>t<leader> :tabnext
" map <leader>tm :tabmove
" map <leader>tc :tabclose<cr>
" map <leader>to :tabonly<cr>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The YouCompleteMe code completion engine for Vim supports several 
" programming languages and specifically uses a Clang-based engine 
" for C++ code completion. It also includes a semantic engine 
" triggered by typing .  or -> or :: as well as diagnostics.
Plugin 'Valloric/YouCompleteMe'

" The syntastic plugin checks for syntax errors in the code,
" before compiling. This can be installed using the Vundle plugin manager. 
" This guide for configuring syntastic is good: https://blog.jpalardy.com/posts/how-to-configure-syntastic/
Plugin 'vim-syntastic/syntastic'

" The NERDTree is a file system explorer for the Vim editor. 
" Using this plugin, users can visually browse complex directory hierarchies, 
" quickly open files for reading or editing, and perform basic 
Plugin  'preservim/nerdtree'

" A light and configurable statusline/tabline plugin for Vim. Thinks: Yet another clone of powerline?
" + [vim-powerline](https://github.com/Lokaltog/vim-powerline) is a nice plugin, but deprecated.
" + [powerline](https://github.com/powerline/powerline) is a nice plugin, but difficult to configure.
" + [vim-airline](https://github.com/vim-airline/vim-airline) is a nice plugin, but it uses too many functions of other plugins, which should be done by users in `.vimrc`.
Plugin 'itchyny/lightline.vim'

" Don't work...
Plugin 'octol/vim-cpp-enhanced-highlight'

" Colorscheme standard is not comfortable
Plugin 'nanotech/jellybeans.vim'

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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_checkers=['gcc']

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

