set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number                      " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1
let mapleader="\<space>"
let g:maplocalleader = ','
set background=dark                     " tell vim what the background color looks like
set ruler              			            " Show the cursor position all the time
set pumheight=10                        " Makes popup menu smaller
set cmdheight=2                         " More space for displaying messages
set cursorline                          " Enable highlighting of the current line
set encoding=UTF-8

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.


set mouse=nicr


" Removes irritating pipe |||| that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => for WHICH KEYS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=500


" au BufEnter :BarbarEnable<CR>



