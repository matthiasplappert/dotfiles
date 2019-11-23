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

alias linter="$HOME/.pyenv/shims/flake8"

function httpsrv {
  port="${1:-3000}"
  ruby -run -e httpd . -p $port
}
