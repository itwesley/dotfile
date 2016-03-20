Building your personal python IDE with VIM.
You can use tab autocomplete when you edit a python file.

NOTES: (Key Mapping)

\ig ---> highlight indent

\8  ---> pep8 checker

C-n ---> open NERDTree window

#::HOW TO::

~~1. Download [pydiction-1.2.3.zip](http://www.vim.org/scripts/download_script.php?src_id=21842) to your ~/.vim and unzip it.~~

~~2. mkdir -p ~/.vim/after/ftplugin~~

~~3. cd pydiction-1.2.3/~~

~~4. cp complete-dict pydiction.py python_pydiction.vim ~/.vim/after/ftplugin/~~

1. mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

2. cd ~/.vim/bundle

3. git clone https://github.com/rkulla/pydiction.git 

4. git clone git://github.com/nathanaelkane/vim-indent-guides.git

5. git clone https://github.com/scrooloose/nerdtree.git

6. git clone https://github.com/Lokaltog/vim-powerline.git

7. sudo pip install pep

8. mkdir -p  ~/.vim/ftplugin/python  

9. Download [pep8.vim](http://www.vim.org/scripts/download_script.php?src_id=14366) to ~/.vim/ftplugin/python

10. cd ~/.vim/

11. git clone https://github.com/stephpy/vim-yaml.git

12. cp vim-yaml/after/ftplugin/yaml.vim after/ftplugin/

13. cp vim-yaml/after/syntax/yaml.vim after/syntax/

14. Download .vimrc file and move it to ~/.vimrc
