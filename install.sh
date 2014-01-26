#!/bin/zsh

set -e

echo "Installing oh my zsh!"

([ -f $HOME/.zshrc ] && \
   echo "Remove your .zshrc if you want it to be replaced!") || \
   ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

echo "Setting up git"

([ -f $HOME/.gitconfig ] && \
   echo "Remove your .gitconfig if you want it to be replaced!") || \
   (ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig && ln -s $HOME/.dotfiles/.githelpers $HOME/.githelpers)

