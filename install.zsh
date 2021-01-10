#!/usr/bin/env zsh
cp .zshrc $HOME
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
if [ ! -d "${HOME}/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
fi
if [ ! -d "${HOME}/.dotfiles" ]; then
  git clone --bare https://github.com/mlunax/dotfiles-srv $HOME/.dotfiles
fi
source $HOME/.zshrc
