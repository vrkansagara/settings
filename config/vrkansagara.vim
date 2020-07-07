" Debug vim -U NONE -u ~/.vimrc
" Reset vim vim -u NONE -U NONE -N

let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=40
map <leader><Space> :NERDTreeToggle<cr>
:set number
:set cursorline