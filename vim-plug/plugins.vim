"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "{colorizer of them}"
    Plug 'norcalli/nvim-colorizer.lua'
"{{nvim treesitter and color scheme}}
    Plug 'christianchiarulli/nvcode-color-schemes.vim'

    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

    Plug 'justinmk/vim-sneak'
    
    Plug 'unblevable/quick-scope'
   

call plug#end()



