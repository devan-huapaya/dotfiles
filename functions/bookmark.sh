# Bookmark position
# Function that takes a single argument string, creates an aliase of the string, as a shortcut to the current terminal location
function bookmark() {
  if test $# -ne 1
  then
    echo "${red}1 argument required"

  else
    echo "alias ${1}=\"$(pwd)\"" >> $aliases_file
    echo "${blue}${1}${green}=\"${purple}$(pwd)${green}\" created!"

    echo "\nPress any key to refresh..."
    read -rsq

    source ~/.bashrc && clear
  fi
}
alias b="bookmark"