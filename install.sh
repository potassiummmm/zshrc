#!/bin/bash

if !( which zsh ); then
	echo Y | apt install zsh
fi

if !( $ZSH_THEME ); then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

cp ./.zshrc ~/

cp ./myagnosterlight.zsh-theme ~/.oh-my-zsh/themes/ 
