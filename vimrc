" Begin my settings!
:set runtimepath+=~/.vim
:set viminfo+=n~/.vim/viminfo

""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
" Enable pathogen bundles
" See http://www.vim.org/scripts/script.php?script_id=2332
" Put github plugins under .vim/bundle/ -- which allows keeping them updated
" without having to do separate installation.
" Call "filetype off" first to ensure that bundle ftplugins can be added to the
" path before we re-enable it later in the vimrc.
:filetype off
call pathogen#infect()
call pathogen#helptags()

" if any error with pathogen then use => :set cp? and result must be compatibility 
" Issue link https://github.com/tpope/vim-pathogen/issues/50

" Added 2010-09-21 Based on http://stevelosh.com/blog/2010/09/coming-home-to-vim
" Set mapleader to ","
let mapleader = ","

" vimcasts #24
" Auto-reload vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    filetype plugin indent on
endif

" Load vimrc in new tab with leader-v
nmap <leader>v :tabedit $MYVIMRC<CR>


try
    " Load functions
    runtime ./config/functions/vim.vim
    runtime ./config/functions/c.vim
    
    " Load all custom configuration for the vim.
    source $HOME/.vim/config/vim/mwop.vim
    source $HOME/.vim/config/vim/vrkansagara.vim

catch /.*/

    echo "Caught error from(.vimrc): " . v:exception

endtry

" =========== @vrkansagara Custom confifuration @START========

" Load personal vimrc in new tab with leader-v
nmap <leader>p :tabedit $HOME/.vim/config/vim/vrkansagara.vim<CR>
" " Reload vimr configuration file
" nnoremap <Leader>r :source $MYVIMRC<CR>
nnoremap <Leader>r :call ReloadVimFiles()<CR>
" =========== @vrkansagara Custom confifuration @END========
