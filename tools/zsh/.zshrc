# turn on profiling based on $ZPROF - keep at beginning of file
if [[ "$ZPROF" = true ]]; then
  zmodload zsh/zprof
fi
autoload -U ${fpath[1]}/*(:t)

eval "$(/opt/homebrew/bin/brew shellenv)"
source $HOME/.dotfiles/tools/zsh/history.zsh
source $HOME/.dotfiles/tools/zsh/plugins.zsh
source $HOME/.dotfiles/tools/zsh/aliases.zsh

# disable globbing
unsetopt nomatch

# bind keys
bindkey '`' autosuggest-accept

# add homebrew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# check compinit cachce only once per day
autoload -Uz compinit
if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

. $(brew --prefix asdf)/asdf.sh

# end profiling - keep at end of file
if [[ "$ZPROF" = true ]]; then
  zprof
fi
