# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh
export ZSH=$HOME/.dotfiles/oh-my-zsh
plugins=(git brew)
DEFAULT_USER="$(whoami)"
UPDATE_ZSH_DAYS=14
ZSH_THEME="powerlevel10k/powerlevel10k"

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# paths
export DOTFILES=$HOME/.dotfiles
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.dotfiles/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# sources
source $ZSH/oh-my-zsh.sh
for f in $DOTFILES/aliases/*.sh; do source $f; done
source $DOTFILES/localrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
