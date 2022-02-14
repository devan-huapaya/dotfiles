# Function to create new aliases
# Takes two arguments and adds an alias to the alias file where the first argument is the alias shortcut
function new-alias() {
  if test $# -ne 2
  then
    echo "${red}2 arguments required"

  else
    echo "alias ${1}=\"${2}\"" >> $aliases_file
    echo "${green}alias ${blue}${1}${green}=\"${purple}${2}${green}\" created!"

    echo "\nPress any key to refresh..."
    read -rsq

    source ~/.bashrc && clear
  fi
}
alias na="new-alias"
