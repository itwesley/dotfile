You can build a beautiful tmux status bar, and save/restore tmux session.

.:: HOW TO ::.

## tmux plugins -> resurrect and continuum

mkdir ~/.tmux

cd ~/.tmux

git clone https://github.com/tmux-plugins/tmux-continuum.git

git clone https://github.com/tmux-plugins/tmux-resurrect.git

## tmux-mem-cpu-load

git clone https://github.com/thewtex/tmux-mem-cpu-load.git

cd tmux-mem-cpu-load

cmake .

make 

make install

cp .tmux.conf to ~/.tmux.conf 

## tmux-powerline 

git clone https://github.com/erikw/tmux-powerline.git

download/copy .tmux.conf.powerline, mytheme.sh and .tmux-powerlinerc, then:

cp .tmux.conf.powerline ~/.tmux.conf

cp mytheme.sh tmux-powerline/theme

cp .tmux-powerlinerc ~/
