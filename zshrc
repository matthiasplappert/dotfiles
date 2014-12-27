# oh-my-zsh
export ZSH=$HOME/.dotfiles/oh-my-zsh
plugins=(git gem rake brew go docker)
DEFAULT_USER="matze"
UPDATE_ZSH_DAYS=4
ZSH_THEME="agnoster"

# paths
export DOTFILES=$HOME/.dotfiles
export GOPATH="$HOME/Development/go"
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.dotfiles/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# rvm
#source $HOME/.rvm/scripts/rvm

# docker
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/matze/.boot2docker/certs/boot2docker-vm

# sources
source $ZSH/oh-my-zsh.sh
for f in $DOTFILES/aliases/*.sh; do source $f; done

