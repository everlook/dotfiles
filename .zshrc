# Path to your oh-my-zsh installation.
export ZSH="/home/jhorn/.oh-my-zsh"
export EDITOR=nvim

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gentoo"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang node npm sudo tmux rust fzf direnv aws kubectl terraform vagrant)

source $ZSH/oh-my-zsh.sh
fpath+=${ZDOTDIR:-~}/.zsh_functions
source $HOME/.zsh_functions/_awscli

# User configuration
export LANG=en_US.UTF-8

# Add $HOME/.local/bin to the path
export PATH=$HOME/.local/bin:$PATH

# Rust
source $HOME/.cargo/env

# Node
export PATH=$HOME/node/bin:$PATH

# Go
export PATH=/usr/local/go/bin:$PATH

# Neovim
export PATH="$PATH:/opt/nvim-linux64/bin"

# for vagrant and libvirt
export VAGRANT_DEFAULT_PROVIDER=libvirt

# alias
alias cls=clear
alias startx='ssh-agent startx'
alias ls='exa'

# don't share history
unsetopt share_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

neofetch


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jhorn/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jhorn/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/jhorn/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/jhorn/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(direnv hook zsh)"

eval "$(starship init zsh)"
