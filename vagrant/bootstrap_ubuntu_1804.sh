#!/usr/bin/env bash

# Update packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Configure Debian repository to install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sour
ces.list.d/yarn.list

# Install zsh, powerline
sudo apt-get install -y fonts-powerline powerline tmux yarn zsh

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

# Install Oh-My-Zsh & Powerlevel 9K theme 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Add personal configurations
git clone https://github.com/YoungsAppWorkshop/dev-env ~/.young
mv .zshrc .zshrc_bak  
ln -s ~/.young/conf/.zshrc_ubuntu ~/.zshrc
ln -s ~/.young/conf/.tmux.conf ~/.tmux.conf
