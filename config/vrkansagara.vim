
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
:set spellfile=~/.vim/spell/en.utf-8.add

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
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


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
