let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]


let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Blog',
            \ '~/Code',
            \ '~/Pics',
            \ ]

let g:startify_change_to_vcs_root = 1

let g:startify_fortune_use_unicode = 1

let g:startify_enable_special = 0

let g:startify_custom_header = [
            \'                                      ',
            \'                  ▟█▙                 ',
            \'                 ▟███▙                ',
            \'                ▟█████▙               ',
            \'               ▟███████▙              ',
            \'              ▂▔▀▜██████▙             ',
            \'             ▟██▅▂▝▜█████▙            ',
            \'            ▟█████████████▙           ',
            \'           ▟███████████████▙          ', 
            \'          ▟█████████████████▙         ',
            \'         ▟███████████████████▙        ',
            \'        ▟█████████▛▀▀▜████████▙       ',
            \'       ▟████████▛      ▜███████▙      ',
            \'      ▟█████████        ████████▙     ',
            \'     ▟██████████        █████▆▅▄▃▂    ',
            \'    ▟██████████▛        ▜█████████▙   ',
            \'   ▟██████▀▀▀              ▀▀██████▙  ',
            \'  ▟███▀▘                       ▝▀███▙ ',
            \' ▟▛▀                               ▀▜▙ ',
\]


