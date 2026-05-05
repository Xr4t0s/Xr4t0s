export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

# Complétions custom
fpath=("$HOME/.zsh/completions" $fpath)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
compinit

alias maj="sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y"

for file in $(find "$ZSH_CUSTOM" -type f -name "*.zsh" ! -path "$HOME/.zsh/completions/*"); do
	  source "$file"
done