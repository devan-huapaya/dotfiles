# A collection of helpful git functions 

# Calls git add, git commit, and git push
# Takes commit message
function git-add-push() {
    git add . &&
    git commit -m "${@}" &&
    git push
}
alias gap="git-add-push"

# Calls git add, git commit, and git push
# Takes commit message
function git-add-commit() {
    git add . &&
    git commit -m "${@}"
}
alias gap="git-add-commit"

# Pulls down pull request from upstream and creates branch
function pull-request() {
    git fetch upstream pull/${1}/head:pr-${1} &&
    git checkout pr-${1} &&
    git remote prune upstream;
}
alias pr="pull-request"

# Pulls down pull request from upstream and creates branch
function git-fetch-and-pull() {
    git fetch
    git pull
}
alias gfp="git-fetch-and-pull"

# Helpful aliases
alias gco="git checkout"