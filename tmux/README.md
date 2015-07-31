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

git clone https://github.com/erikw/tmux-powerline.git

download/copy .tmux.conf.powerline, mytheme.sh and .tmux-powerlinerc, then:

cp .tmux.conf.powerline ~/.tmux.conf

cp mytheme.sh tmux-powerline/theme

cp .tmux-powerlinerc ~/



:: tmux plugins -> Tmux Resurrect and Tmux Continuum

mkdir ~/.tmux

cd ~/.tmux

git clone https://github.com/tmux-plugins/tmux-continuum.git

git clone https://github.com/tmux-plugins/tmux-resurrect.git

cat >> ~/.tmux.conf <<EOF
# for tmux Resurrect & Continuum
run-shell ~/.tmux/tmux-resurrect/resurrect.tmux
run-shell ~/.tmux/tmux-continuum/continuum.tmux
set -g @continuum-save-interval '60'
EOF

