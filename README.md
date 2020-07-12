# settings


# How can I clone this repo

~~~bash
git clone --recursive https://github.com/vrkansagara/settings.git -b vimrc
~/.vim

ln -s ~/.vim/vimrc .vimrc 
~~~

# How can I update this project

You can simply run bellow command to update, this `vimrc` project

~~~bash
git pull --rebase
~~~

#How to update all git submodules using single command.

~~~bash
git submodule foreach git pull origin master
~~~



# Things to add
-[] Single line comment 
-[] Multi line comment
-[] Do not fold code
-[] code all codes vs open all fold in single shortcut
-[x] Bufferexplorer search file ( CTRL + D to switch mode, CTRL + R for regex)
-[] Re-indent whole file
-[] Cut selected text ( select text using visual mode and press 'd' which do as
        cut the text , and use 'p' into visual mode which past it)
