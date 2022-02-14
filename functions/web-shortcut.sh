#! /bin/bash

# Bookmark position
# Takes two arguments and adds an alias to the alias file where the first argument is an alias to open the shortcut in a browser
# REQUIRES ON PYTHON to use the alias
function web-shortcut() {
  if test $# -ne 2
  then
    echo "${red}2 arguments required"
  else
    echo "alias ${1}=\"python -mwebbrowser ${2}\"" >> $aliases_file
    echo "${green}web shortcut ${blue}${1} ${green}to ${purple}${2} ${green} created!"

    echo "\nPress any key to refresh..."
    read -rsq

    source ~/.bashrc && clear
  fi
}
alias ws="web-shortcut"
