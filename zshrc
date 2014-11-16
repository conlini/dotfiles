# source the exports and my_aliases if they exist
if [[ -f .exports && -r .exports ]]; then
    source ~/.exports
fi
if [[ -f .my_aliases && -r .my_aliases ]]; then
    source ~/.my_aliases
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

