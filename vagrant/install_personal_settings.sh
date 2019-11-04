#!/usr/bin/env bash

# Install nvm, Node.js, yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
nvm install --lts
npm install -g yarn

# Install Oh-My-Zsh & Powerlevel 9K theme
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Add personal configurations
git clone https://github.com/YoungsAppWorkshop/dev-env ~/.young
mv ~/.zshrc ~/.zshrc_bak
ln -s ~/.young/conf/.zshrc_ubuntu ~/.zshrc
ln -s ~/.young/conf/.tmux.conf ~/.tmux.conf

# Change Default Shell to Zsh
chsh -s $(which zsh)