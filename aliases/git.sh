alias gp="git pull"
alias gs="git status"
alias gdm='git difftool'
alias gds='git difftool --staged'
alias gsu='git submodule sync; git submodule update --init --recursive;'
alias grm="git rm `git ls-files --deleted`"
alias gbcu="git branch --merged | grep \"matthias/*\" | xargs -n 1 git branch -d"
alias gcu='git clean -f -d'

git config --global alias.co checkout
