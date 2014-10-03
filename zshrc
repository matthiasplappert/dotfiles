# oh-my-zsh
export ZSH=$HOME/.dotfiles/oh-my-zsh
plugins=(git gem rake brew go docker)
DEFAULT_USER="matze"
UPDATE_ZSH_DAYS=4
ZSH_THEME="agnoster"

# paths
export DOTFILES=$HOME/.dotfiles
export GOROOT="$HOME/Development/go"
export GOPATH="$HOME/Development/go"
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.dotfiles/bin:$PATH

# rvm
#source $HOME/.rvm/scripts/rvm

# docker
export DOCKER_HOST=tcp://192.168.59.103:2375

# sources
source $ZSH/oh-my-zsh.sh
for f in $DOTFILES/aliases/*.sh; do source $f; done

