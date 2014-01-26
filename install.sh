#!/bin/zsh

set -e

echo "Installing oh my zsh!"

([ -f $HOME/.zshrc ] && \
   echo "Remove your .zshrc if you want it to be replaced!") || \
   ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

echo "OK!"

echo "Setting up git"

echo "--- Linking"
([ -f $HOME/.gitconfig ] && \
   echo "Remove your .gitconfig if you want it to be replaced!") || \
   (ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig && ln -s $HOME/.dotfiles/.githelpers $HOME/.githelpers)

echo "--- OK!"

echo "--- Git extras"

(cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)

echo "--- OK!"
