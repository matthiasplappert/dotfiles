# listing
alias l="ls -lh --color=auto"
alias la="ls -lAh --color=auto"

alias rrm="rm -rf"

alias t="tmux"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias ts="tmux new -s"
alias tk="tmux kill-session -t"

alias v="vim"

function httpsrv {
  port="${1:-3000}"
  ruby -run -e httpd . -p $port
}
