# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib/jvm/java-6-sun/bin:/usr/lib/jvm/java-6-sun/jre/bin:/home/wesley/Scripts/go/bin:/home/wesley/Scripts:/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/wesley/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Custom alias #################################################
alias vi='vim'
alias cls='clear'
alias axel='axel -n 10 -a -S5'
alias au='notify sudo apt-get update'
alias ag='notify sudo apt-get upgrade'
alias ac='notify sudo apt-get clean'
alias ph='ping 168.95.1.1' 
alias te='sudo hddtemp /dev/sda'
alias fan="cat /proc/acpi/ibm/fan | grep ^speed | awk -F ":" '{print $2}' | expand | sed -e 's/^ *//g'"
alias sync='sync;sync;sync'
alias sai='sudo apt-get'
alias sbash='source ~/.bashrc'
alias backup='~/Scripts/backup.sh'
alias cdd='cd ~/Desktop'
alias cdD='cd ~/Dropbox'
alias cds='cd ~/Scripts/'
alias cdp='cd ~/Scripts/prac/python'
alias cdS='cd /pool/Software'
alias nets='sudo dhclient eth0;sudo arp -s 192.168.1.1 00:22:15:51:87:fa'
alias netebox='sudo ifconfig eth0:0 192.168.100.254 up'
alias adsl='sudo poff -a;sudo poff -a;sleep 2;sudo pon provider'
alias wl='sudo ~/Scripts/wireless.sh' ## Taipei Home ##
alias wpa='sudo ~/Scripts/wpa.sh' ## ChungLi Home ##
alias wpas='sudo rmmod mac80211 cfg80211 iwlagn > /dev/null 2>&1'
alias ddns='sudo ~/Scripts/inadyn.sh'
alias umountc='sudo umount /media/cdrom* > /dev/null 2>&1'
alias umountu='sudo umount /media/usb* > /dev/null 2>&1'
alias umounta='sudo umount /media/* > /dev/null 2>&1'
alias goec2='ssh root@ec2.devops.idv.tw'
alias goebox='ssh wesley@192.168.100.1'
alias gorasppi='ssh root@172.19.3.10'
alias gocubietklan='ssh root@172.19.3.11 -p 222'
alias gocubietkwan='ssh root@devops.idv.tw -p 222'
alias goxpc='ssh root@xpc'
alias tem='sudo ~/Scripts/temperature.sh'
alias hot='echo level 7 | sudo tee /proc/acpi/ibm/fan'
alias con='sudo minicom'
alias godeb1='ssh root@192.168.56.2'
alias godeb2='ssh root@192.168.56.3'
alias reboot='echo -e "Do you want to reboot? [y/N]\c";read ANS;if [ "$ANS" == "y" ];then reboot;else echo -e "\c";fi'
alias kmm="kill -HUP $(pgrep mint)"
alias gu='sudo sed -i '/wrapped/a\/home/wesley/Scripts/xinput.sh' /opt/google/chrome/google-chrome'
alias rest='sudo s2disk'
alias url='/home/wesley/Scripts/shortUrl.sh'
alias pb='/home/wesley/Scripts/pastebin.sh'
alias sw='sudo swapoff -a ; sudo swapon -a'
alias music='mocp'
#################################################################
export PAGER=most
export PATH=/home/wesley/Scripts/go/bin:/home/wesley/Scripts:/sbin:/usr/sbin:"$PATH"
#export GTK_MODULES="globalmenu-gnome"
export GOPATH='/home/wesley/Scripts/go'
export GOBIN='/home/wesley/Scripts/go/bin'
#################################################################
export JAVA_HOME=/usr/lib/jvm/java-6-sun
export CLASSPATH=$JAVA_HOME/lib:$JAVA_HOME/jre/lib:.
export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH:$HOME/bin
#################################################################
export PYTHONSTARTUP=~/.pythonrc
#################################################################
notify()
{
 eval $* && notify-send "Done:" "$*" -i '/usr/share/icons/gnome/32x32/emotes/face-smile.png' || \
 notify-send "Fail:" "$*" -i '/usr/share/icons/gnome/32x32/emotes/face-surprise.png'
}
#################################################################
#rmbut()
#{
# declare -A keep
# for arg_mark ; do keep[$arg_mark]=mark ; done
# for arg in * ; do [[ ${keep["$arg"]} ]] || rm -rf "$arg" ; done
#}

export WORKON_HOME=/home/wesley/.virtualenvs
source /etc/bash_completion.d/virtualenvwrapper
