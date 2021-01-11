#!/bin/bash

if !( which zsh ); then
	echo Y | apt install zsh
fi

if !( $ZSH_THEME ); then
	echo Y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

cp ./.zshrc ~/

cp ./myagnosterlight.zsh-theme ~/.oh-my-zsh/themes/ 
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
source ~/.zshrc
