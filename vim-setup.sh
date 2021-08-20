#!/bin/bash

echo "Starting Neovim install + config"

echo "Installing neovim..."
read -p "[Press any key to continue...]"


sudo apt install neovim

echo "Installing git"
read -p "[Press any key to continue..."

sudo apt install git

echo "Installing plugin manager: vim-plug"
read -p "[Press any key to continue...]"

echo "Sub-task: Installing curl..."
read -p "[Press any key to continue...]"

sudo apt install curl

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing python3, pip3, pynvim for deoplete"
read -p "[Press any key to continue...]"

sudo apt update
sudo apt install python3 && sudo apt install python3-pip

pip3 install --user pynvim

echo "Making Neovim directory in .config folder"
read -p "[Press any key to continue...]"

sudo mkdir ~/.config/nvim -p

echo "Moving the init.vim file into the .config folder"
read -p "[Press any key to continue...]"

sudo mv config/nvim/init.vim ~/.config/nvim

echo "Successfully installed and configured Neovim!"



