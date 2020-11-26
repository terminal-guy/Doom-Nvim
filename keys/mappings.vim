"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap ESC to ii
:imap ii <Esc>

"""now using coc as the default file explorer"""
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :CocCommand explorer<CR>

let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
" map <Leader>th <C-w>t<C-w>H
" map <Leader>tk <C-w>t<C-w>K


" mappings  for cco flutter
nmap <silent> gd <Plug>(coc-definition)<CR>
nmap <silent> gy <Plug>(coc-type-definition)<CR>
nmap <silent> gi <Plug>(coc-implementation)<CR>
nmap <silent> gr <Plug>(coc-references)<CR>



" Better indenting
vnoremap < <gv
vnoremap > >gv

" map <Leader>tt :vnew term://fish<CR>

" setup mapping to call :LazyGit

xmap <leader>.  <Plug>(coc-codeaction-selected)<CR>
nmap <leader>. <Plug>(coc-codeaction-selected)<CR>
