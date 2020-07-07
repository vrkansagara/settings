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
