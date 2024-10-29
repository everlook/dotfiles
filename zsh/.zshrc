# Path to your oh-my-zsh installation.
export ZSH="/home/jhorn/.oh-my-zsh"
export EDITOR=nvim

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gentoo"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang node npm sudo tmux rust fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# Add $HOME/.local/bin to the path
export PATH=$HOME/.local/bin:$PATH

# Rust
source $HOME/.cargo/env

# alias
alias cls=clear
#alias ls='exa'

# don't share history
unsetopt share_history

#eval "$(starship init zsh)"
