alias gp="git pull"
alias gs="git status"
alias gdm='git difftool'
alias gds='git difftool --staged'
alias gsu='git submodule sync; git submodule update --init --recursive;'
alias grm="git rm `git ls-files --deleted`"
alias gbcu="git branch --merged | grep \"matthias/*\" | xargs -n 1 git branch -d"
alias gcu='git clean -f -d'

git config alias.co checkout
parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
export PS1='\[\e[1;37m\][\[\e[1;31m\]\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;36m\]\w\[\e[1;33m\]$(parse_git_branch)\[\e[1;37m\]]$ \[\e[0m\]'
