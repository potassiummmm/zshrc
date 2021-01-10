#!/bin/bash

if !( which zsh ); then
	apt install zsh
	printf "\n"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./myagnosterlight.zsh-theme ~/.oh-my-zsh/themes/ 
