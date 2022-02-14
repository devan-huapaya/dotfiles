# Collection of aliases 

# Example aliases
# Note format
# No spaces between name and string
# alias <name>=<string>

# Restarts shell
# Call after making changes w/o having to restart
alias refresh="source ~/.bashrc && clear"
alias r="refresh"

# System
alias off="sudo shutdown -h now"    # Shutdown
alias finder="open ./"

# Open dotfiles or aliases in code editor
alias dotfiles="${editor} $dotfile_dir"
alias aliases="${editor} $aliases_file"
alias a="aliases"

# Shortcut to main projects folder
alias p="cd ${work}"

# Package managers
alias n="npm"
alias y="yarn"

# Git commands
alias conflicts="git diff --name-only --diff-filter=U"          # Does not push
alias no-edit="git commit --amend --no-edit"                    # Does not push
alias last="git log -1"                                         # Show last change
alias rebase="git fetch upstream && git rebase upstream/master" # Fetch and rebase
alias gcane!="git add -A && git commit --amend --no-edit && git push -f"

# A place to add additonal dotfiles

# Created from bookmark or new-alias
