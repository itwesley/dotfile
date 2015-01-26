Building your personal python IDE with VIM.
You can use tab autocomplete when you edit a python file.

#::HOW TO::

1. Download pydiction-1.2.zip to your ~/.vim and unzip it.

2. mkdir -p ~/.vim/after/ftplugin

3. cd pydiction-1.2/

4. cp complete-dict pydiction.py python_pydiction.vim ~/.vim/after/ftplugin/

5. mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

6. cd ~/.vim/bundle

7. git clone git://github.com/nathanaelkane/vim-indent-guides.git

8. Download/copy vimrc file,then put it at ~/.vimrc
