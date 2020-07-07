" PHP parser check (Leader + L)
:autocmd FileType php noremap <Leader>l :w!<CR>:!php -l %<CR>

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>
