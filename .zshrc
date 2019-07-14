# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

#Set a theme
ZSH_THEME="robbyrussell"

#Plugins
plugins=(git)

#source zsh
source $ZSH/oh-my-zsh.sh

############aliases##############
#################################

#############linux###############
alias zshconfig="vim ~/.zshrc"
alias install="sudo apt-get install $1"
alias pyx="python3 $1"
alias cl="clear"
alias higr="history | grep $1"
#############docker#############
alias dk="docker"
alias dkim="docker images"
alias dkps="docker ps -a --format '{{.ID}} - {{.Names}} - {{.Status}} - {{.Image}}'"
alias dkrm="docker rm"
alias dknetprune="docker network prune"
alias dkcomp="docker-compose up | watch docker ps -a"
dkexec() {
    docker exec -it "$1" /bin/bash
    echo "$1"
}
