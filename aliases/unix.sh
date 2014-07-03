# listing
alias l="ls -lh"
alias la="ls -lAh"

alias rrm="rm -rf"

alias t="tmux"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias ts="tmux new -s"
alias tk="tmux kill-session -t"

alias v="vim"

alias ..="cd .."
alias ...="cd ..."

function mkd() {
  mkdir $1
  cd $1
}
