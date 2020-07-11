" PHP parser check (Leader + L)
" :autocmd FileType php noremap <Leader>l :w!<CR>:!php -l %<CR>

" run file with PHP CLI (CTRL-M)
" :autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>


" :set lines=24
" :set columns=85

" Turn on filetype plugins
:filetype plugin on
:filetype plugin indent on
" :runtime! $HOME/.vim/ftdetect/*.vim

" Keybindings for movement in insert mode
imap <Leader>0 <Esc>I
imap <Leader>$ <Esc>A
imap <Leader>h <Esc>i
imap <Leader>l <Esc>lli
imap <Leader>j <Esc>lji
imap <Leader>k <Esc>lki

" The escape key is a long ways away. This maps it to the sequence 'kj'
:map! kj <Esc>
:inoremap kj <Esc>

" Syntax highlighting macro
:map <Leader>h :syn on<CR>
:map <Leader>H :syn off<CR>

