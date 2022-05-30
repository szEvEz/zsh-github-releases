#!/bin/zsh

###################################
# Plugin:  github-releases
# Version: 0.0.1
# Author:  szEvEz
##################################

input="$ZSH_CUSTOM/plugins/zsh-github-releases/repos.txt"

ghrel () {

  if [[ -z "$1" ]]; then
    while IFS= read -r line
      do
        echo "### $line ###"
        curl -s https://api.github.com/repos/$line/releases/latest | jq -r '.tag_name, .body'
	echo ""
      done < "$input"
  else
    curl -s https://api.github.com/repos/$1/releases/latest | jq -r '.tag_name, .body'
  fi
}
