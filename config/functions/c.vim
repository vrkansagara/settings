" Compile C language file
:function CompileCFile(filename, ...)
:  echom a:filename
:  echom a:0
    " !gcc -g -Wall -Wextra -O2 -fomit-frame-pointer -std=gnu89 -pedantic -Wmissing-prototypes -Wstrict-prototypes -Wold-style-definition fileName
    " echo '---------------------\n' 
    " ./a.out
:endfunction
