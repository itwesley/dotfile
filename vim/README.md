Building your personal python IDE with VIM.
You can use tab autocomplete when you edit a python file.

NOTES: (Key Mapping)
\ig ---> highlight indent
\8  ---> pep8 checker
C-n ---> open NERDTree window

#::HOW TO::

1. Download [pydiction-1.2.3.zip](http://www.vim.org/scripts/download_script.php?src_id=21842) to your ~/.vim and unzip it.

2. mkdir -p ~/.vim/after/ftplugin

3. cd pydiction-1.2.3/

4. cp complete-dict pydiction.py python_pydiction.vim ~/.vim/after/ftplugin/

5. mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

6. cd ~/.vim/bundle

7. git clone git://github.com/nathanaelkane/vim-indent-guides.git

8. git clone git clone https://github.com/scrooloose/nerdtree.git

9. sudo pip install pep

10. mkdir -p  ~/.vim/ftplugin/python  

11. Download [pep8.vim](http://www.vim.org/scripts/download_script.php?src_id=14366) to ~/.vim/ftplugin/python

12. Download .vimrc file and move it to ~/.vimrc
