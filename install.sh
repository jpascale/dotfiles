#!/bin/zsh

set -e

echo "Installing oh my zsh!"

([ -f $HOME/.zshrc ] && \
   echo "Remove your .zshrc if you want it to be replaced!") || \
   ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
