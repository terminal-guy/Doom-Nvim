"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif




call plug#begin('~/.config/nvim/autoload/plugged')

"{{ The Basics }}
    Plug 'gmarik/Vundle.vim'                           " Vundle
    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'junegunn/rainbow_parentheses.vim'
   " Plug 'frazrepo/vim-rainbow'
"{{ File management }}
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
"{{ Ranager         }}
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"{{ Tim Pope Plugins }}
    Plug 'tpope/vim-surround'                          " Change surrounding marks
"{{ Syntax Highlighting and Colors }}
    Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
    Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
    Plug 'vim-python/python-syntax'                    " Python highlighting
   " Plug 'ap/vim-css-color'                            " Color previews for CSS
"{{ Junegunn Choi Plugins }}
    Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
    Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
" {{ for vim dart plugins}}
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'natebosch/vim-lsc'
    Plug 'natebosch/vim-lsc-dart'
"    Plug 'thosakwe/vim-flutter'
"{{ for intellisense"    }}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"{{ for floatterm        }}
    Plug 'voldikss/vim-floaterm'
"{{ themes               }}
    Plug 'joshdick/onedark.vim'
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'arcticicestudio/nord-vim'
"{{ fzf                  }}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
"{{  whichkey                 }}
    Plug 'liuchengxu/vim-which-key'
"{{  Startify             }}
    Plug 'mhinz/vim-startify'
"{{  snippets              }}
    Plug 'honza/vim-snippets'
    Plug 'natebosch/dartlang-snippets'
    " Better Syntax Support
   " Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "{colorizer of them}"
    Plug 'norcalli/nvim-colorizer.lua'
"{{nvim treesitter and color scheme}}
"    Plug 'nvim-treesitter/nvim-treesitter'

    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

    Plug 'justinmk/vim-sneak'
    
    Plug 'unblevable/quick-scope'

    Plug 'ChristianChiarulli/far.vim'
   
    Plug 'terminal-guy/doomNvim-colorschemes'

    Plug 'wakatime/vim-wakatime'


call plug#end()



