There are two extra config, one is tmux-mem-cpu-load another is tmux-powerline in here.
You can use them to build a beautiful tmux status bar.

.:: HOW TO ::.

:: tmux-mem-cpu-load ::

git clone https://github.com/thewtex/tmux-mem-cpu-load.git

cd tmux-mem-cpu-load

cmake .

make 

make install

download/copy .tmux.conf file,then put it at ~/.tmux.conf or /etc/tmux.conf


:: tmux-powerline ::

git clone git://github.com/erikw/tmux-powerline.git

cp tmux.conf.powerline ~/.tmux.conf

cp mytheme.sh tmux-powerline/theme

cp .tmux-powerlinerc ~/
