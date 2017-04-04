# oh-my-zsh
export ZSH=$HOME/.dotfiles/oh-my-zsh
plugins=(git gem rake brew go pyenv)
DEFAULT_USER="$(whoami)"
UPDATE_ZSH_DAYS=4
ZSH_THEME="agnoster"

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# paths
export DOTFILES=$HOME/.dotfiles
export GOPATH="$HOME/Development/go"
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.dotfiles/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/Library/TeX/texbin

# sources
source $ZSH/oh-my-zsh.sh
for f in $DOTFILES/aliases/*.sh; do source $f; done
source $DOTFILES/localrc
