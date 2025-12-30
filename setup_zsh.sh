#!/bin/bash


sudo apt update
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/spaceship-prompt/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
wget -O ~/.zshrc https://raw.githubusercontent.com/postech-compsec/rc/refs/heads/master/zshrc
wget -O ~/.spaceshiprc https://raw.githubusercontent.com/postech-compsec/rc/refs/heads/master/spaceshiprc
echo "Changing default shell to zsh..."
chsh -s $(which zsh)
echo "Done. Login again!"
