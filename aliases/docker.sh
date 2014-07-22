alias d='docker'
alias dcc='docker ps -q | xargs docker kill && docker ps -a -q | xargs docker rm'
alias dci='dcc && docker images -q | xargs docker rmi'
