" Load all vimrc file
function! ReloadVimFiles()
    for f in split(glob('~/.vim/config/vim/*.vim'), '\n')
        exe 'source' f
    endfor
endfunction