if [[ -f ~/.loader && -r ~/.loader ]]; then
    source ~/.loader
fi

# enable and set wlaters theme
autoload -U promptinit
promptinit
prompt suse

# enable autocomplete
autoload -U compinit 
compinit

# change the auto complete presentation
zstyle ':completion:*:descriptions' format '%U%B%d%b%u' 
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# enable command correction 
setopt correctall

# enable history
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups # ignore duplicates in history

setopt autocd # auto cd.. type /Users instead of cd /Users

#sledge:binary path
export SLEDGE_BIN=/Users/a0b06xn/.sledge/bin
export PATH="${PATH}:${SLEDGE_BIN}"
