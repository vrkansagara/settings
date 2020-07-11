
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM debug snippest
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reset vim vim -u NONE -U NONE -N
" Debug vim -U NONE -u ~/.vimrc
" List all script executed by vim => simple type :scriptnames

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lets check spelling while user typing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" map <S-F5> :setlocal spell spelllang=en_us<cr>
:setlocal spell spelllang=en_us

"The following command will let us press CTRL-N or CTRL-P in insert-mode to complete the word we’re typing!
:set complete+=kspell

" press zg in normal mode of vim  to add cursor spelling into spell white list file.
:set spellfile=~/.vim/config/spell/en.utf-8.add

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.php setlocal spell


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=40
map <leader><Space> :NERDTreeToggle<cr>
nmap <leader>n :NERDTreeFind<CR>
map <leader>nb :NERDTreeFromBookmark<Space>
autocmd BufEnter * lcd %:p:h


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

:set number
:set cursorline

" Quickly find and open a file in the CWD
let g:ctrlp_map = '<C-f>'


""""""""""""""""""""""""""""""
" => pvim-colors-solarize plugin
""""""""""""""""""""""""""""""
syntax enable
if has('gui_running')
    set background=light
    let g:solarized_termcolors=16
else
    set background=light
    let g:solarized_termcolors=256
endif
colorscheme solarized


" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread


"limit text lines to 80 characters. Will create new line when this is exceeded.
set textwidth=80

"will wrap lines longer than 80 char to new visual line
set wrap

"show the current row and column at the bottom of the screen
set ruler


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C / C++ language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" run file with gcc CLI (CTRL-M)
:autocmd FileType c noremap <C-M> :w!<CR>:!gcc % && ./a.out<CR>

"use c indentation style and syntax highlighting for c, c++, and c0 files
autocmd FileType c,cpp :set cindent
autocmd FileType c,cpp :setf c
autocmd FileType c,cpp :set expandtab
au BufEnter *.c0 setf c
au BufEnter *.c0 set cindent
au BufEnter *.c0 set expandtab

let g:termdebug_wide=1
" Source the termdebug plugin
packadd termdebug

" Add mapping to load termdebug
noremap <silent> <leader>td :Termdebug<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tab swtich
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move open tab around with ctrl + left and right arrow
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
