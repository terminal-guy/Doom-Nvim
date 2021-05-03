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




"     ____             __              
"    / __ )____ ______/ /_  ____ ______
"   / __  / __ `/ ___/ __ \/ __ `/ ___/
"  / /_/ / /_/ / /  / /_/ / /_/ / /    
" /_____/\__,_/_/  /_.___/\__,_/_/     
                                     


" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>



" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>


"Close Buffer
nnoremap <silent>    <A-c> :BufferClose<CR>

" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
