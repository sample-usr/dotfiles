export LC_ALL=en_US.UTF-8
export EDITOR=nvim

# make sure we have XDG spec set
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

# fzf config options
export FZF_DEFAULT_OPTS="--height=60% --preview-window=right:60%:wrap"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d . --color=never"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"

# asdf config options
export ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdf/.asdfrc
export ASDF_DATA_DIR=$XDG_DATA_HOME/asdf
export FLUTTER_ROOT=$XDG_DATA_HOME/asdf/installs/flutter/2.0.4-stable
export NODEJS_CHECK_SIGNATURES=no

# docker config options
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker 
export DOCKER_VOLUMES_DIR=$XDG_DATA_HOME/docker/volumes

# bundler config
export BUNDLE_USER_HOME=$XDG_CONFIG_HOME/bundle
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle

# zsh
export ZSH_AUTOSUGGEST_USE_ASYNC=true

# gnupg
export GNUPGHOME=${XDG_CONFIG_HOME}/gnupg

# bat
export BAT_THEME="base16"

fpath=(
  $HOME/.dotfiles/tools/zsh/functions
  $fpath 
)

typeset -gU cdpath fpath path

# https://blog.patshead.com/2011/04/improve-your-oh-my-zsh-startup-time-maybe.html
skip_global_compinit=1

