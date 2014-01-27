# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/dependencies/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"

LC_ALL=pl_PL.UTF-8
LC_CTYPE=pl_PL.UTF-8
LANG=pl_PL.UTF-8
export LC_ALL
export LC_CTYPE
export LANG

git config --global push.default simple

alias vim='mvim -v'

HIST_STAMPS="mm/dd/yyyy"

plugins=(git git-extras brew bundler colorize gem history history-substring-search xcode zeus tmux tmuxinator rvm ruby redis-cli rails postgres osx node copydir copyfile cp)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='mvim -v'
export GIT_EDITOR='mvim -v'
